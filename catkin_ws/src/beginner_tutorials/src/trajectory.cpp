#include "ros/ros.h"
#include "std_msgs/String.h"
#include "std_msgs/Float64.h"
 
#include <sstream>
 
int main(int argc, char **argv)
{
  ros::init(argc, argv, "trajectory");
  ros::NodeHandle n;
  
  ros::Publisher trajectory_pub = n.advertise<std_msgs::Float64>("trajectory", 1000);
  
  ros::Rate loop_rate(10);
   
  int count = 0;
  while (ros::ok())
  {
    std_msgs::Float64 msg;
    msg.data = 333.333;
  
    //ROS_INFO("%f", msg.data);
  
    trajectory_pub.publish(msg);
  
    ros::spinOnce();
 
    loop_rate.sleep();
    count++;
    std::cout << "traj " << count << std::endl;
  }
  
  
  return 0;
}
