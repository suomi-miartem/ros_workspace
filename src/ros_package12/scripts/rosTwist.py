#!/usr/bin/env python

import rospy
from geometry_msgs.msg import Twist
from turtlesim.msg import Pose

PI = 3.1415926535897

def move():
    rospy.init_node('turtle_move', anonymous=True)
    velPub = rospy.Publisher('/turtle1/cmd_vel', Twist, queue_size=10)
    velMsg = Twist()
    ticks = 0
    rate = rospy.Rate(10)
    
    while not rospy.is_shutdown():
        velMsg.linear.x = 3
        if ticks % 10 == 0:
            velMsg.angular.z = 90*10*PI/180
        else:
            velMsg.angular.z = 0
        ticks = ticks + 1

        #rospy.loginfo(vel)
        velPub.publish(velMsg)
        rate.sleep()

if __name__ == '__main__':
    try:
        move()
    except rospy.ROSInterruptException:
        pass
