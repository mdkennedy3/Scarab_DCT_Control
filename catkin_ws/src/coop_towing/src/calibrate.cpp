#include "ros/ros.h"
#include "std_msgs/String.h"
#include "std_msgs/Float64.h"
#include <iostream>
#include <nav_msgs/Odometry.h>
#include <signal.h>
#include <fstream>
#include <coop_towing/sensor.h>
#include <math.h>
#include <termios.h>
#include "../../../trajgen/TraGen/EigenAll/Eigen/Dense"

using namespace std;
using namespace Eigen;

int dmo = 1;
int amo = 3;
//int c;
//bool done;
char* filename;
//ros::NodeHandle nh;

double L_0 = 10.0;
double d = 4.0;
double l = 4.5;
double PtoP, numerator, dL, THs, THo;
double Ps[2];
double Po[2];

vector<pair<double, double> > calc_d;
vector<pair<double, double> > calc_sa;
vector<pair<double, double> > calc_oa;
pair<double, double> new_data;

vector<pair<double, vector<double> > > scarab_poses;
vector<pair<double, vector<double> > > object_poses;
pair<double, vector<double> > new_pose;
vector<double> scarab_pose;
vector<double> object_pose;

vector<pair<double, double> > dist;
vector<pair<double, double> > scarab_angle;
vector<pair<double, double> > object_angle;
pair<double, double> d_volts;
pair<double, double> sa_volts;
pair<double, double> oa_volts;


//TODO: get the right message type!

void scarabViconCallback(const nav_msgs::Odometry msg) {
  scarab_pose.push_back(msg.pose.pose.position.x);
  scarab_pose.push_back(msg.pose.pose.position.y);
  scarab_pose.push_back(msg.pose.pose.orientation.w);
  new_pose = make_pair(msg.header.stamp.toSec(), scarab_pose);
  scarab_poses.push_back(new_pose);
}

void objectViconCallback(const nav_msgs::Odometry msg) {
  object_pose.push_back(msg.pose.pose.position.x);
  object_pose.push_back(msg.pose.pose.position.y);
  object_pose.push_back(msg.pose.pose.orientation.w);
  new_pose = make_pair(msg.header.stamp.toSec(), object_pose);
  object_poses.push_back(new_pose);
}

//void cleanup(int sig, ros::NodeHandle n, char* filename) {
//    solveAndSave(filename, n);
//    ros::requestShutdown();
//}

void distanceCallback(const coop_towing::sensor msg) {
  d_volts = make_pair(msg.header.stamp.toSec(), msg.voltage);
  dist.push_back(d_volts);
}

void scarabAngleCallback(const coop_towing::sensor msg) {
  sa_volts = make_pair(msg.header.stamp.toSec(), msg.voltage);
  scarab_angle.push_back(sa_volts);
}

void objectAngleCallback(const coop_towing::sensor msg) {
  oa_volts = make_pair(msg.header.stamp.toSec(), msg.voltage);
  object_angle.push_back(oa_volts);
}

/*
int getch() {
  static struct termios oldt, newt;
  tcgetattr( STDIN_FILENO, &oldt);           // save old settings
  newt = oldt;
  newt.c_lflag &= ~(ICANON);                 // disable buffering      
  tcsetattr( STDIN_FILENO, TCSANOW, &newt);  // apply new settings

  int c = getchar();  // read character (non-blocking)

  tcsetattr( STDIN_FILENO, TCSANOW, &oldt);  // restore old settings
  return c;
}*/

//assuming vicon publishes at least as fast as the sensor and begins at least as early
//Also assuming sensor sends complete trios
void solveAndSave(char* filename) {
  //initialize
  int m = dist.size();
  MatrixXd P_d = MatrixXd::Constant(m, 1, 0);
  MatrixXd P_sa = MatrixXd::Constant(m, 1, 0);
  MatrixXd P_oa = MatrixXd::Constant(m, 1, 0);
  MatrixXd G_d = MatrixXd::Constant(m, dmo+1, 0);
  MatrixXd G_sa = MatrixXd::Constant(m, amo+1, 0);
  MatrixXd G_oa = MatrixXd::Constant(m, amo+1, 0);
  MatrixXd F_d = MatrixXd::Constant(dmo+1, 1, 0);
  MatrixXd F_sa = MatrixXd::Constant(amo+1, 1, 0);
  MatrixXd F_oa = MatrixXd::Constant(amo+1, 1, 0);
  
  //match sensor times to vicon times
  bool over_d = false;
  bool over_sa = false;
  bool over_oa = false;
  for (int i=0; i<m; i++) {
    for (int j=0; j<calc_d.size(); j++) {
      if (dist[i].first >= calc_d[j].first) {
        P_d(i,0) = calc_d[j].second;
        for (int k=0; k<=dmo; k++) {
          G_d(i,k) = pow(dist[i].second, dmo-k);
        }
      }
      if (over_d) {
        j = calc_d.size();
      }
    }
    for (int j=0; j<calc_sa.size(); j++) {
      if (scarab_angle[i].first >= calc_sa[j].first) {
        P_sa(i,0) = calc_sa[j].second;
        for (int k=0; k<=amo; k++) {
          G_sa(i,k) = pow(scarab_angle[i].second, amo-k);
        }
      }
      if (over_sa) {
        j = calc_sa.size();
      }
    }
    for (int j=0; j<calc_oa.size(); j++) {
      if (object_angle[i].first >= calc_oa[j].first) {
        P_oa(i,0) = calc_oa[j].second;
        for (int k=0; k<=amo; k++) {
          G_oa(i,k) = pow(object_angle[i].second, amo-k);
        }
      }
      if (over_oa) {
        j = calc_oa.size();
      }
    }
  }
  //solve the problem
  F_d = G_d.transpose()*(G_d*G_d.transpose()).inverse()*P_d;
  F_sa = G_sa.transpose()*(G_sa*G_sa.transpose()).inverse()*P_sa;
  F_oa = G_oa.transpose()*(G_oa*G_oa.transpose()).inverse()*P_oa;
 
  /*
  for (int i=0; i<dmo; i++) {
    distance_fit.push_back(F_d(i,0));
  } 
  for (int i=0; i<amo; i++) {
    scarab_angle_fit.push_back(F_sa(i,0));
    object_angle_fit.push_back(F_oa(i,0));
  } */

  //write solutions to YAML file
  /*
  n.setParam("distance_fit", distance_fit);
  n.setParam("scarab_angle_fit", scarab_angle_fit);
  n.setParam("object_angle_fit", object_angle_fit);

  char command[256];
  snprintf(command, 256, "rosparam dump %s", filename);
  system(command);
    
  n.deleteParam("distance_fit");
  n.deleteParam("scarab_angle_fit");
  n.deleteParam("object_angle_fit");*/

  fstream calibfile;
  calibfile.open (filename);
  calibfile << "distance_fit: [";
  for (int i=0; i<dmo-1; i++) {
    calibfile << F_d(i,0) << ", ";
  }
  calibfile << F_d(dmo-1,0) << "]" << endl;
  
  calibfile << "scarab_angle_fit: [";
  for (int i=0; i<amo-1; i++) {
    calibfile << F_sa(i,0) << ", ";
  }
  calibfile << F_sa(amo-1,0) << "]" << endl;

  calibfile << "object_angle_fit: [";
  for (int i=0; i<amo-1; i++) {
    calibfile << F_oa(i,0) << ", ";
  }
  calibfile << F_oa(amo-1,0) << "]" << endl;
  calibfile.close();
  
}

void cleanup(int sig) {
    solveAndSave(filename);
    ros::requestShutdown();
}

int main(int argc, char **argv) {

  if (argc != 4) {
    cout << "Usage: <outfile.yaml> <scarab_model_name> <object_model_name>" << endl;
    return 1;
  }
  ros::init(argc, argv, "calibrate");
  ros::NodeHandle n;
  filename = argv[1];
  //nh = n;
  struct sigaction sigIntHandler;

  sigIntHandler.sa_handler = cleanup;
  sigemptyset(&sigIntHandler.sa_mask);
  sigIntHandler.sa_flags = 0;

  sigaction(SIGINT, &sigIntHandler, NULL);
  
  //signal(SIGINT, cleanup(1));

  ros::Subscriber subvs = n.subscribe(argv[2], 1000, scarabViconCallback);
  ros::Subscriber subvo = n.subscribe(argv[3], 1000, objectViconCallback);
  ros::Subscriber subsensD = n.subscribe("sensorD", 1000, distanceCallback);
  ros::Subscriber subsensAS = n.subscribe("sensorAS", 1000, scarabAngleCallback);
  ros::Subscriber subsensAO = n.subscribe("sensorAO", 1000, objectAngleCallback);

  ros::Rate loop_rate(10);

  while(ros::ok()) {
    ros::spinOnce();
    if (scarab_pose.size() > 0 && object_pose.size() > 0) {
      Ps[0] = scarab_poses[0].second[0] + d*(sin(scarab_poses[0].second[2]));
      Ps[1] = scarab_poses[0].second[1] + d*(cos(scarab_poses[0].second[2]));
      Po[0] = object_poses[0].second[0] + l*(sin(object_poses[0].second[2]));
      Po[1] = object_poses[0].second[1] + l*(cos(object_poses[0].second[2]));
      
      PtoP = pow(pow((Po[0]-Po[0]), 2) + pow((Ps[1]-Po[1]), 2), .5);
      dL = PtoP - L_0;
      numerator = ((Ps[0] - Po[0])*cos(scarab_poses[0].second[2]) + 
                  (Ps[1] - Po[1])*sin(scarab_poses[0].second[2]));
      THs = acos(numerator / PtoP);
      
      numerator = ((Ps[0] - Po[0])*cos(object_poses[0].second[2]) + 
                  (Ps[1] - Po[1])*sin(object_poses[0].second[2]));
      THo = acos(numerator / PtoP);

      new_data = make_pair(scarab_poses[0].first, dL);
      calc_d.push_back(new_data);
      
      new_data = make_pair(scarab_poses[0].first, THs);
      calc_sa.push_back(new_data);
      
      new_data = make_pair(scarab_poses[0].first, THo);
      calc_oa.push_back(new_data);
      
      scarab_poses.erase(scarab_poses.begin());
      object_poses.erase(object_poses.begin());

    }
    loop_rate.sleep();  
  }

  return 0;
}

