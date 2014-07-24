#include "ros/ros.h"
#include "std_msgs/String.h"
#include "std_msgs/Float64.h" 
#include <sstream>
 
void alphaCallback(const std_msgs::Float64::ConstPtr& msg) {
  ROS_INFO("ALPHA HEARD");
}

int main(int argc, char **argv)
{
  ros::init(argc, argv, "controller");
  ros::NodeHandle n;
  
  ros::Subscriber alpha = n.subscribe("ALPHA", 1000, alphaCallback);
    
  ros::Publisher controller_pub = n.advertise<std_msgs::Float64>("controller", 1000);
  
  ros::Rate loop_rate(10);
   
  int count = 0;
  while (ros::ok())
  {
    std_msgs::Float64 msg;
    msg.data = 1010.1010;
  
    //ROS_INFO("%f", msg.data);
  
    controller_pub.publish(msg);
  
    ros::spinOnce();
 
    loop_rate.sleep();
    count++;
    std::cout << "sent " << count << std::endl;
  }
  
  
  return 0;
}
