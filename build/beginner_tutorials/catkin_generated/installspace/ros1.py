#!/usr/bin/env python3

import rospy
from geometry_msgs.msg import Twist
from turtlesim.msg import Pose

def move():
    #vel = Twist()
    #vel = Pose()
    #pub = rospy.Publisher('move', Twist, queue_size=10)
    #rospy.init_node('move', anonymous=True)
    #rate = rospy.Rate(10)
    
    rospy.init_node('turtle_move', anonymous=True)
    velPub = rospy.Publisher('/turtle1/cmd_vel', Twist, queue_size=10)
    velMsg = Twist()
    
    rate = rospy.Rate(1)
    while not rospy.is_shutdown():
        velMsg.linear.x += 10
        velMsg.angular.z +=10

        #rospy.loginfo(vel)
        velPub.publish(velMsg)
        rate.sleep()

if __name__ == '__main__':
    try:
        move()
    except rospy.ROSInterruptException:
        pass
