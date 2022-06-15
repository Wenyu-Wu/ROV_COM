#!/usr/bin/env python

import rospy
import time
from pymavlink import mavutil
from rov_datacom.msg import imu

rospy.init_node('imu_data')
imu_pub = rospy.Publisher('imu_data', imu, queue_size=50)
r = rospy.Rate(10)

master = mavutil.mavlink_connection('udpin:0.0.0.0:14550')
master.wait_heartbeat()
while True:
    try:
        msg = master.recv_match().to_dict()
    except:
        continue
    if not rospy.is_shutdown():
        if(msg['mavpackettype'] == 'ATTITUDE'):
            imu_msg = imu()
            imu_msg.roll = msg['roll']
            imu_msg.pitch = msg['pitch']
            imu_msg.yaw = msg['yaw']
            imu_pub.publish(imu_msg)
            rospy.loginfo(imu_msg)
        r.sleep()
    else:
        print('no running roscore')
        break