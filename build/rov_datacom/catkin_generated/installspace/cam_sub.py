#!/usr/bin/env python3

import rospy
from cv_bridge import CvBridge, CvBridgeError
from sensor_msgs.msg import Image
import cv2
import gi
import numpy as np

def cam_callback(data):
    bridge = CvBridge()
    try:
        cv_img = bridge.imgmsg_to_cv2(data,"bgr8")
    except CvBridgeError as e:
        print(e)
    cv2.imshow("ROV Stream",cv_img)
    cv2.waitKey(3)

rospy.init_node('cam_listen',anonymous=True)
while not rospy.is_shutdown():
    rospy.Subscriber("cam_topic",Image,cam_callback)
    rospy.spin()
print("shutting down")
cv2.destroyAllWindows()