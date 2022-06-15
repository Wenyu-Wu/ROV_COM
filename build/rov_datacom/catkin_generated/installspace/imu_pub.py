#!/usr/bin/env python3

import rospy
import time
from pymavlink import mavutil
from rov_datacom.msg import raw_imu

rospy.init_node('raw_imu')
imu_pub = rospy.Publisher('raw_imu', raw_imu, queue_size=50)
r = rospy.Rate(10)

master = mavutil.mavlink_connection('udpin:0.0.0.0:14550')
master.wait_heartbeat()
while True:
    try:
        msg = master.recv_match().to_dict()
    except:
        continue
    if not rospy.is_shutdown():
        if(msg['mavpackettype'] == 'RAW_IMU'):
            imu_msg = raw_imu()
            imu_msg.time = msg['time_usec']
            imu_msg.acc = [msg['xacc'],msg['yacc'],msg['zacc']]
            imu_msg.gyro = [msg['xgyro'],msg['ygyro'],msg['zgyro']]
            imu_msg.mag = [msg['xmag'],msg['ymag'],msg['zmag']]
            imu_pub.publish(imu_msg)
            rospy.loginfo(imu_msg)
        r.sleep()
    else:
        print('no running roscore')
        break