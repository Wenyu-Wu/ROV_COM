#!/usr/bin/env python
# license removed for brevity
import rospy
import time
from pymavlink import mavutil
from rov_datacom.msg import imu

def talker(data):
    pub = rospy.Publisher('chatter', imu, queue_size=10)
    rospy.init_node('talker', anonymous=True)
    rate = rospy.Rate(10) # 10hz
    msg = imu()
    msg.roll = data['roll']
    msg.pitch = data['pitch']
    msg.yaw = data['yaw']
    while not rospy.is_shutdown():
        rospy.loginfo(msg)
        pub.publish(msg)
        rate.sleep()

if __name__ == '__main__':
    master = mavutil.mavlink_connection('udpin:0.0.0.0:14550')

    # Make sure the connection is valid
    master.wait_heartbeat()

    # Get some information !
    while True:
        try:
            msg = master.recv_match().to_dict()
            # print(master.recv_match().to_dict())
            if (msg['mavpackettype'] == 'ATTITUDE'):
                # roll = msg['roll']
                # pitch = msg['pitch']
                # yaw = msg['yaw']
                print('in loop')
                try:
                    talker(msg)
                except rospy.ROSInterruptException:
                    pass
            elif (msg['mavpackettype'] == 'RAW_IMU'):
                # print(msg['xmag'])
                pass
            else:
                continue
        except:
            pass
        time.sleep(0.00001)

# try:
#     talker()
# except rospy.ROSInterruptException:
#     pass
