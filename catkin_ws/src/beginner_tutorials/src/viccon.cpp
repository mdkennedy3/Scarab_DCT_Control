#include "ros/ros.h"
#include "std_msgs/String.h"
#include "std_msgs/Float64.h"

#include <sstream>
 
int main(int argc, char **argv)
{
  ros::init(argc, argv, "viccon");
  ros::NodeHandle n;
  
  ros::Publisher viccon_pub = n.advertise<std_msgs::Float64>("viccon", 1000);
  
  ros::Rate loop_rate(10);
   
  int count = 0;
  while (ros::ok())
  {
    std_msgs::Float64 msg;
    msg.data = 55555.55555;
  
    //ROS_INFO("%f", msg.data);
  
    viccon_pub.publish(msg);
  
    ros::spinOnce();
 
    loop_rate.sleep();
    count++;
    std::cout << count << std::endl;
  }
  
  
  return 0;
}
