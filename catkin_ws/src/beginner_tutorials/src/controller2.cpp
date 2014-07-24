#include "ros/ros.h"
#include "std_msgs/String.h"
#include "std_msgs/Float64.h" 
#include <sstream>
 
void alphaCallback(const std_msgs::Float64::ConstPtr& msg) {
  ROS_INFO("222 ALPHA HEARD 222");
}

int main(int argc, char **argv)
{
  ros::init(argc, argv, "controller2");
  ros::NodeHandle n;
 
  ros::Subscriber alpha = n.subscribe("ALPHA", 1000, alphaCallback);
  
  ros::Publisher controller2_pub = n.advertise<std_msgs::Float64>("controller2", 1000);
  
  ros::Rate loop_rate(10);
   
  int count = 0;
  while (ros::ok())
  {
    std_msgs::Float64 msg;
    msg.data = 2020.2020;
  
    //ROS_INFO("%f", msg.data);
  
    controller2_pub.publish(msg);
  
    ros::spinOnce();
 
    loop_rate.sleep();
    count++;
    std::cout << "sent 222 " << count << std::endl;
  }
  
  
  return 0;
}
