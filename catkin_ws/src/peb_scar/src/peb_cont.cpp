#include <iostream>
#include "ros/ros.h"
#include "geometry_msgs/Twist.h"
#include <curses.h>

#include "peb_scar/up.h"
#include "peb_scar/down.h"
#include "peb_scar/left.h"
#include "peb_scar/right.h"
#include "peb_scar/clear.h"
#include "peb_scar/quit.h"

std::string output_topic("cmd_vel");
double v_speed, v_inc;
double w_speed, w_inc;
ros::Publisher pub;
geometry_msgs::Twist twist;

void printStuff() {
    int row = 0;
    mvprintw(row++, 0, "Angular: % 0.2f", twist.angular.z);
    mvprintw(row++, 0, "Linear:  % 0.2f", twist.linear.x);
    mvprintw(row++, 0, "");

}

bool call_up(peb_scar::upRequest &req,peb_scar::upResponse &res) {
    twist.linear.x += v_inc;
    twist.linear.x = std::min(std::max(twist.linear.x, -v_speed), v_speed);
    twist.angular.z = std::min(std::max(twist.angular.z, -w_speed), w_speed);
    pub.publish(twist);
    return true;
}
bool call_down(peb_scar::downRequest &req,peb_scar::downResponse &res) {
    twist.linear.x -= v_inc;
    twist.linear.x = std::min(std::max(twist.linear.x, -v_speed), v_speed);
    twist.angular.z = std::min(std::max(twist.angular.z, -w_speed), w_speed);
    pub.publish(twist);

    return true;
}
bool call_left(peb_scar::leftRequest &req,peb_scar::leftResponse &res) {
    twist.angular.z += w_inc;
    twist.linear.x = std::min(std::max(twist.linear.x, -v_speed), v_speed);
    twist.angular.z = std::min(std::max(twist.angular.z, -w_speed), w_speed);
    pub.publish(twist);

    return true;
}
bool call_right(peb_scar::rightRequest &req,peb_scar::rightResponse &res) {
    twist.angular.z -= w_inc;
    twist.linear.x = std::min(std::max(twist.linear.x, -v_speed), v_speed);
    twist.angular.z = std::min(std::max(twist.angular.z, -w_speed), w_speed);
    pub.publish(twist);

    return true;
}
bool call_clear(peb_scar::clearRequest &req,peb_scar::clearResponse &res) {
    twist.angular.z = 0;
    twist.linear.x = 0;
    twist.linear.x = std::min(std::max(twist.linear.x, -v_speed), v_speed);
    twist.angular.z = std::min(std::max(twist.angular.z, -w_speed), w_speed);
    pub.publish(twist);

    return true;
}
bool call_quit(peb_scar::quitRequest &req,peb_scar::quitResponse &res) {

    twist.angular.z = 0;
    twist.linear.x = 0;
    pub.publish(twist);
    ros::Duration(0.5).sleep();

    ros::shutdown();
    return true;
}

int main(int argc, char** argv) {
    ros::NodeHandle *node;
    ros::init(argc, argv, "peb_scar");
    ros::NodeHandle n("~");
    node = &n;

    ros::ServiceServer service0 = n.advertiseService("up", call_up);
    ros::ServiceServer service1 = n.advertiseService("down", call_down);
    ros::ServiceServer service2 = n.advertiseService("left", call_left);
    ros::ServiceServer service3 = n.advertiseService("right", call_right);
    ros::ServiceServer service4 = n.advertiseService("clear", call_clear);
    ros::ServiceServer service5 = n.advertiseService("quit", call_quit);

    node->param("vspeed", v_speed, 0.6); //top speed
    node->param("wspeed", w_speed, 0.6); //top angular speed
    node->param("vinc", v_inc, 0.08); //velocity increment
    node->param("winc", w_inc, 0.05); // angular vel increment
    output_topic = ros::names::resolve(output_topic);
    pub = n.advertise<geometry_msgs::Twist>(output_topic, 10);


    ros::spin();
	return 0;
}
