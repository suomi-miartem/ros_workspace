#!/usr/bin/env python3


import os
import rospy
import time
import tf


class ExTf():
    def __init__(self):
        rospy.init_node('tf_ex', anonymous=True)
        self.odom_broadcaster = tf.TransformBroadcaster()
        self.odom_broadcaster_laser = tf.TransformBroadcaster()
        self.listener = tf.TransformListener()
        self.base_link = 0
        self.th = 0
        self.len_laser = 0.2
        self.x = 1
        self.y = 0
        self.current_time = rospy.Time.now()
        self.last_time = rospy.Time.now()
        self.r = rospy.Rate(50)

    def func_tf_pub(self):
        self.current_time = rospy.Time.now()
        odom_quat = tf.transformations.quaternion_from_euler(0, 0, self.th)
        self.odom_broadcaster.sendTransform((self.x, self.y, 0.48), 
                                            odom_quat, self.current_time,
                                            "base_link","odom")

        odom_quat1 = tf.transformations.quaternion_from_euler(0, 0, 0)
        self.odom_broadcaster_laser.sendTransform((0, 0, self.len_laser), 
                                                    odom_quat1, self.current_time, 
                                                    "laser","base_link")
        self.x +=0.01
        self.r.sleep()
    
    def func_tf_sub(self):
        try:
            (trans,rot) = self.listener.lookupTransform('/laser', '/odom', self.current_time)
            print(trans)
        except (tf.LookupException, tf.ConnectivityException, tf.ExtrapolationException):
            print('er')
     




def main():
    example1 = ExTf()
    stored_exception=None
    while not rospy.is_shutdown():
        try:
            example1.func_tf_pub()
            if stored_exception:
                print('game over')
                break
        except KeyboardInterrupt:
            stored_exception=sys.exc_info()  

if __name__ == "__main__":
    main()