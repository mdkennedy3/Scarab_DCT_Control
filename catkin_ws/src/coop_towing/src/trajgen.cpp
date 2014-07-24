#include "ros/ros.h"
#include "std_msgs/String.h"
#include "std_msgs/Float64.h"
#include "../../../trajgen/TraGen/prog.h"

//TODO: finish trajectory generation, make custom trajectory message, 
// pass message to control node at appropriate rate
int main(int argc, char **argv) {
  ros::init(argc, argv, "trajgen");
  ros::NodeHandle n;

  ros::Publisher pub = n.advertise<std_msgs::String>("trajectory", 1000);
  ros::Rate loop_rate(10);
  while (ros::ok()) {
    // custom::trajectory::message msg;
   
    //pub.publish(msg);

    ros::spinOnce();
    loop_rate.sleep();
 }


  return 0;
}

