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

using namespace std;

int main(int argc, char** argv){
  ros::init(argc, argv, "boss_node");
  ros::NodeHandle nh;

  ros::service::waitForService("go");
  ros::ServiceClient spawner =nh.serviceClient<RMPISR::go>("go");
  RMPISR::go go_teste;
  spawner.call(go_teste);
}

