#include <iostream>
#include <fstream>
#include <sstream>
#include <cmath>
#include <stdlib.h>
#include <stdio.h>
#include <ros/ros.h>
#include <signal.h>
#include <termios.h>
#include <tf/transform_broadcaster.h>
#include "geometry_msgs/Twist.h"
#include "nav_msgs/Odometry.h"
#include "std_msgs/String.h"
#include "std_msgs/Bool.h"
#include <turtlesim/Pose.h>
#include "RMPISR/addpoint.h"
#include "RMPISR/go.h"
#include "RMPISR/stop.h"

#define PI 3.141592

void go(ros::NodeHandle nh){
  ros::service::waitForService("go");
  ros::ServiceClient spawner =nh.serviceClient<RMPISR::go>("go");
  RMPISR::go go_;
  spawner.call(go_);
}

void stop(ros::NodeHandle nh){
  ros::service::waitForService("stop");
  ros::ServiceClient spawner =nh.serviceClient<RMPISR::go>("stop");
  RMPISR::stop stop_;
  spawner.call(stop_);
}
using namespace std;

int main(int argc, char** argv){
  ros::init(argc, argv, "boss_node");

  ros::NodeHandle nh;
  if (argc != 2){
    ROS_ERROR("you need to enter 1 or 2!"); 
    return -1;
  }

  int num=atoll(argv[1]);
  if(num=1) go(nh);
  if(num=2) stop(nh);
  else {
    ROS_ERROR("you need to enter 1 or 2!"); 
    return -1;
  }

  ros::spin();
  return 0;
}

