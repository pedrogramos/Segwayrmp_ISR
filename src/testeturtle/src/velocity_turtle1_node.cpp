#include <iostream>
#include <sstream>
#include <cmath>
#include <stdlib.h>
#include "ros/ros.h"
#include <tf/transform_broadcaster.h>
#include "geometry_msgs/Twist.h"
#include "nav_msgs/Odometry.h"
#include "std_msgs/String.h"
// #include ""


int main(int argc, char **argv) {

	//Initializes ROS, and sets up a node with the name "send_velocity_node"
	ros::init(argc, argv, "velocity_turtle1_node");
	ros::NodeHandle nh;

	// topico que vai publicar os comandos de velocidade 
	ros::Publisher vel_pub = nh.advertise<geometry_msgs::Twist>("/turtle1/cmd_vel", 1);
	// topico que vai subscrever a odometria
	//ros::Subscriber odo_sub =nh.subscribe(nav_msgs::Odometry)("/turtle1/Pose",1000,); // type: turtlesim/Pose

	ros::Rate loop_rate(10);

	geometry_msgs::Twist vel;

	vel.linear.x=2.0;
	vel.angular.z=0;

	vel_pub.publish(vel);

	ros::spin();

return 0;
}


/*

while (ros::ok())
  {
  
    // This is a message object. You stuff it with data, and then publish it.

    std_msgs::String msg;

    std::stringstream ss;
    ss << "hello world " << count;
    msg.data = ss.str();

    ROS_INFO("%s", msg.data.c_str());

    
    // The publish() function is how you send messages. The parameter
    // is the message object. The type of this object must agree with the type
    // given as a template parameter to the advertise<>() call, as was done
    // in the constructor above.
    
    chatter_pub.publish(msg);

    ros::spinOnce();

    loop_rate.sleep();
    ++count;
  }
*/




/* falta

void chatterCallback(const std_msgs::String::ConstPtr& msg)
{
  ROS_INFO("I heard: [%s]", msg->data.c_str());
}

 vel_pub.publish(msg);

*/