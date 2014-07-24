#include "ros/ros.h"
#include "std_msgs/String.h"
#include "std_msgs/Float64.h"
#include <coop_towing/sensor.h>
#include <nav_msgs/Odometry.h>
#include <yaml-cpp/yaml.h>
#include <nav_msgs/Odometry.h>

using namespace std;


int m = 5;

vector<double> dwindow;
vector<double> aswindow;
vector<double> aowindow;

double filtered_d;
double filtered_as;
double filtered_ao;

vector<double> distance_fit;
vector<double> scarab_angle_fit;
vector<double> object_angle_fit;

double current_pose[3];
double current_velo[3];
double previous_time;

//TODO: need to map distance to force (i think)
void distanceCallback(const coop_towing::sensor msg) {

  dwindow.push_back(msg.voltage);
  if (dwindow.size() < m) {
    filtered_d = msg.voltage;
  }
  else {
    double raw_total = 0;
    for (int i = 0; i < m; i++) {
      raw_total += dwindow[i];
    }
    filtered_d = raw_total / m;
    dwindow.erase(dwindow.begin());
  }
}

void scarabAngleCallback(const coop_towing::sensor msg) {
  aswindow.push_back(msg.voltage);
  if (aswindow.size() < m) {
    filtered_as = msg.voltage;
  }
  else {
    double raw_total = 0;
    for (int i = 0; i < m; i++) {
      raw_total += aswindow[i];
    }
    filtered_as = raw_total / m;
    aswindow.erase(aswindow.begin());
  }
}

void objectAngleCallback(const coop_towing::sensor msg) {
  aowindow.push_back(msg.voltage);
  if (aowindow.size() < m) {
    filtered_ao = msg.voltage;
  }
  else {
    double raw_total = 0;
    for (int i = 0; i < m; i++) {
      raw_total += aowindow[i];
    }
    filtered_ao = raw_total / m;
    aowindow.erase(aowindow.begin());
  }
}

void viconCallback(const nav_msgs::Odometry msg) {
  double step = (msg.header.stamp.toSec() - previous_time);
  current_velo[0] = (msg.pose.pose.position.x - current_pose[0]) / step;
  current_velo[1] = (msg.pose.pose.position.y - current_pose[1]) / step;
  current_velo[2] = (msg.pose.pose.orientation.w - current_pose[2]) / step;
  
  current_pose[0] = msg.pose.pose.position.x;
  current_pose[1] = msg.pose.pose.position.y;
  current_pose[2] = msg.pose.pose.orientation.w;
  previous_time = msg.header.stamp.toSec();
}
void trajgenCallback(const std_msgs::Float64::ConstPtr& v) {}

double DofV(double voltage) {
  double d = 0;
  for (int i=distance_fit.size()-1; i>=0; i--) {
    d += pow(voltage, i)*distance_fit[i];
  }
  return d;
}

double SAofV(double voltage) {
  double sa = 0;
  for (int i=scarab_angle_fit.size()-1; i>=0; i--) {
    sa += pow(voltage, i)*scarab_angle_fit[i];
  }
  return sa;
}

double OAofV(double voltage) {
  double oa = 0;
  for (int i=object_angle_fit.size()-1; i>=0; i--) {
    oa += pow(voltage, i)*object_angle_fit[i];
  }
  return oa;
}

//TODO: find out why these are undefined - its finding the include...
void loadCalibration(char* filename) {
  /*
  YAML::Node calib = YAML::LoadFile(filename);
  if (calib.IsNull()) {
    cout << "Calibration file not found" << endl;
    return false; //File Not Found                                            
  }
  for (int i=0; i<calib["distance_fit"].size(); i++) {
    distance_fit.push_back(calib["distance_fit"][i].as<double>());
  }
  for (int i=0; i<calib["scarab_angle_fit"].size(); i++) {
    scarab_angle_fit.push_back(calib["scarab_angle_fit"][i].as<double>());
  }
  for (int i=0; i<calib["object_angle_fit"].size(); i++) {
    object_angle_fit.push_back(calib["object_angle_fit"][i].as<double>());
  }*/
}

int main(int argc, char **argv) {
  if (argc != 3) {
    cout << "Usage: <filename>" << endl;
    return 1;
  }
  ros::init(argc, argv, "control");
  ros::NodeHandle n;
  loadCalibration(argv[1]);

  ros::Subscriber subsensD = n.subscribe("sensorD", 1000, distanceCallback);
  ros::Subscriber subsensAS = n.subscribe("sensorAS", 1000, scarabAngleCallback);
  ros::Subscriber subsensAO = n.subscribe("sensorAO", 1000, objectAngleCallback);
  ros::Subscriber subtrajgen = n.subscribe("trajgen", 1000, trajgenCallback);
  ros::Subscriber subvicon = n.subscribe(argv[2], 1000, viconCallback);


  double v_speed = .7;
  double w_speed = .5;

  geometry_msgs::Twist twist;
  ros::Publisher pub = n.advertise<geometry_msgs::Twist>("cmd_vel", 10);
  
  ros::Rate loop_rate(15);
  while (ros::ok()) {
    twist.linear.x = v_speed;
    twist.angular.z = w_speed;
    pub.publish(twist);
    ros::spinOnce();
    loop_rate.sleep();
  }
  return 0;
}

