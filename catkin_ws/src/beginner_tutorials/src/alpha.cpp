#include "ros/ros.h"
#include "std_msgs/String.h"
#include "std_msgs/Float64.h"

int m = 5;
std::vector<double> prev_chatter;
std::vector<double> prev_chatter2;
std::vector<double> prev_chatter3;

void chatterCallback(const std_msgs::Float64::ConstPtr& msg)
{
  
  if (prev_chatter.size() < m) {
    prev_chatter.push_back(msg->data);
    ROS_INFO("%f", msg->data);
   }
  else {
    double fforce;
    double sub_total = 0;
    prev_chatter.insert(prev_chatter.begin(),msg->data);
    prev_chatter.resize(m);
    for (int i = 0; i < m; i++) {
      sub_total += prev_chatter[i];
    }
    fforce = sub_total / m;
    ROS_INFO("%f", fforce);
  }
}

void chatter2Callback(const std_msgs::Float64::ConstPtr& msg)
{
  
  if (prev_chatter2.size() < m) {
    prev_chatter2.push_back(msg->data);
    ROS_INFO("%f", msg->data);
   }
  else {
    double fforce;
    double sub_total = 0;
    prev_chatter2.insert(prev_chatter2.begin(),msg->data);
    prev_chatter2.resize(m);
    for (int i = 0; i < m; i++) {
      sub_total += prev_chatter2[i];
    }
    fforce = sub_total / m;
    ROS_INFO("%f", fforce*10);
  }
}

void chatter3Callback(const std_msgs::Float64::ConstPtr& msg)
{
  
  if (prev_chatter3.size() < m) {
    prev_chatter3.push_back(msg->data);
    ROS_INFO("%f", msg->data);
   }
  else {
    double fforce;
    double sub_total = 0;
    prev_chatter3.insert(prev_chatter3.begin(),msg->data);
    prev_chatter3.resize(m);
    for (int i = 0; i < m; i++) {
      sub_total += prev_chatter3[i];
    }
    fforce = sub_total / m;
    ROS_INFO("%f", fforce*100);
  }
}

void vicconCallback(const std_msgs::Float64::ConstPtr& msg) {
 ROS_INFO("VICCON");
}

void trajectoryCallback(const std_msgs::Float64::ConstPtr& msg) {
  ROS_INFO("TRAJECTORY");
}

void controllerCallback(const std_msgs::Float64::ConstPtr& msg) {
  ROS_INFO("CONTROL");
  //std_msgs::Float64 cb_msg;
  //cb_msg.data = 1.0;
  //controller_pub.publish(cb_msg);
}

void controller2Callback(const std_msgs::Float64::ConstPtr& msg) {
  ROS_INFO("222CONTROL222");
  //std_msgs::Float64 cb_msg;
  //cb_msg.data = 2.0;
  //controller2_pub.publish(cb_msg);
}



int main(int argc, char **argv)
{
  ros::init(argc, argv, "ALPHA");
  
  ros::NodeHandle n;
  
  ros::Subscriber viccon = n.subscribe("viccon", 1000, vicconCallback);
  ros::Subscriber chatter = n.subscribe("chatter", 1000, chatterCallback);
  ros::Subscriber chatter2 = n.subscribe("chatter2", 1000, chatter2Callback);
  ros::Subscriber chatter3 = n.subscribe("chatter3", 1000, chatter3Callback);
  ros::Subscriber trajectory = n.subscribe("trajectory", 1000, trajectoryCallback);
  ros::Subscriber controller = n.subscribe("controller", 1000, controllerCallback);
  ros::Subscriber controller2 = n.subscribe("controller2", 1000, controller2Callback);
 
  ros::Publisher claw_pub = n.advertise<std_msgs::String>("claw", 1000);
  ros::Publisher controller_pub = n.advertise<std_msgs::Float64>("controller", 1000);
  ros::Publisher controller2_pub = n.advertise<std_msgs::Float64>("controller2", 1000);

  //ros::Rate loop_rate(10);

  //int count = 0;
  //while (ros::ok()) {
  std_msgs::Float64 msg;
  msg.data = 1.0;

  //ROS_INFO("%f", msg.data);
  claw_pub.publish(msg);


  //loop_rate.sleep();
  //++count;
  
  ros::spin();
 
  return 0;
}
