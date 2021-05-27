#!/usr/bin/env python

import rospy
from turtlesim.msg import Pose

def callback(data):
    rospy.loginfo("lin_Velocity = %f : ang_Velocity = %f\n", data.linear_velocity, data.angular_velocity)

def listen():
    rospy.init_node('turtle_listener', anonymous=True)
    
    rospy.Subscriber('/turtle1/pose', Pose, callback)
    
    rate = rospy.Rate(10)
    
    while not rospy.is_shutdown():
        rate.sleep()

if __name__ == '__main__':
    try:
        listen()
    except rospy.ROSInterruptException:
        pass
