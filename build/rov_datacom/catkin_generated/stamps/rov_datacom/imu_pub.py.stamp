#!/usr/bin/env python

import rospy
from sensor_msgs.msg import Imu
from geometry_msgs.msg import Vector3
from pymavlink import mavutil

rospy.init_node('pymavlink_node',anonymous=True)
imu_pub = rospy.Publisher('imu_topic', Imu, queue_size=50)
r = rospy.Rate(10)

master = mavutil.mavlink_connection('udpin:0.0.0.0:14550')
master.wait_heartbeat()
while True:
    try:
        msg = master.recv_match().to_dict()
    except:
        continue
    if not rospy.is_shutdown():
        if(msg['mavpackettype'] == 'SCALED_IMU2'):
            imu_msg = Imu()
            # t_stamp = msg['time_boot_ms']/1000
            t_stamp = rospy.Time.now()
            # imu_msg.header.stamp.secs = int(msg['time_boot_ms']/1000)
            imu_msg.header.stamp = t_stamp
            # print("======="+str(msg['time_boot_ms']/1000)+"=========")
            # imu_msg.linear_acceleration = [msg['xacc']*0.00981,msg['yacc']*0.00981,msg['zacc']*0.00981]
            imu_msg.linear_acceleration = Vector3()
            imu_msg.linear_acceleration.x = msg['xacc']*0.00981
            imu_msg.linear_acceleration.y = msg['yacc']*0.00981
            imu_msg.linear_acceleration.z = msg['zacc']*0.00981
            # imu_msg.angular_velocity = [msg['xgyro']/1000,msg['ygyro']/1000,msg['zgyro']/1000]
            imu_msg.angular_velocity = Vector3()
            imu_msg.angular_velocity.x = msg['xgyro']/1000
            imu_msg.angular_velocity.y = msg['ygyro']/1000
            imu_msg.angular_velocity.z = msg['zgyro']/1000
            imu_pub.publish(imu_msg)
            rospy.loginfo(imu_msg)
        r.sleep()
    else:
        print('no running rospy')
        break