#include <ros/ros.h>
#include "std_msgs/String.h"
#include "pebble/getMenu.h"
#include "pebble/callMenu.h"
#include <vector>
#include <sstream>

bool getMenuItems(pebble::getMenuRequest &req,pebble::getMenuResponse &res) {
	// std::vector<std::string> items;
	std::string item,name;
	int count = 1;
	while(true) {
		std::ostringstream convert;
		std::ostringstream convert2;

		convert << "/item" << count;
		convert2 << "/service" << count;
		if(ros::param::get(convert.str(),item)  && ros::param::get(convert2.str(),name) ) {
			res.labels.push_back(item);
			res.services.push_back(name);
			// ROS_ERROR("got this ");
			count ++;
		}
		else
			break;
	}

	return true;
}
// bool callMenuItems(pebble::callMenuRequest &req,pebble::callMenuResponse &res) {
// 	// std::vector<std::string> items;
// 	std::string item,name;
// 	int count = 1;
// 	std::ostringstream convert;
	
// 	convert << "/item" << count;
// 	if(ros::param::get(convert.str(),item)) {


// 	ros::ServiceClient client = n.serviceClient(item);

// 	return true;
// }



int main(int argc, char** argv)
{
  ros::init(argc, argv, "pebble_ros_server");
  ros::NodeHandle nh;

  ros::ServiceServer getMenu = nh.advertiseService("pebble/get_menu",getMenuItems);

  ros::spin();
  return 0;
}