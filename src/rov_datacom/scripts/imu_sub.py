#!/usr/bin/env python
import rospy
from rov_datacom.msg import raw_imu

imu_ls = [] # apologize for global variable

class ahrs_raw:
    def __init__(self,data):
        self.time = data.time
        self.acc = data.acc
        self.gyro = data.gyro
        self.mag = data.mag

def fusion_handle(imu_e,imu_l):
    return False

def callback(data):
    # rospy.loginfo(rospy.get_caller_id() + '\n' +  str(data))
    global imu_ls
    new_raw = ahrs_raw(data)
    imu_ls.append(new_raw)
    if (len(imu_ls) > 5):
        imu_ls = imu_ls[-5:]
    dat_1 = imu_ls[-1]
    dat_2 = imu_ls[-2]
    fusion_loc = fusion_handle(dat_1,dat_2)
    print(len(imu_ls))

rospy.init_node('imu_listen',anonymous=True)
while not rospy.is_shutdown():
    rospy.Subscriber("raw_imu",raw_imu,callback)
    rospy.spin()
    # rospy.sleep(1)
    # print(len(imu_ls))

# def listener():

#     # In ROS, nodes are uniquely named. If two nodes with the same
#     # name are launched, the previous one is kicked off. The
#     # anonymous=True flag means that rospy will choose a unique
#     # name for our 'listener' node so that multiple listeners can
#     # run simultaneously.
#     imu_ls = []
#     rospy.init_node('imu_listen', anonymous=True)

#     rospy.Subscriber("raw_imu", raw_imu, callback)

#     if (len(imu_ls) >= 10):
#         imu_ls = imu_ls[-10:]
#     print(len(imu_ls))
#     # spin() simply keeps python from exiting until this node is stopped
#     rospy.spin()

# if __name__ == '__main__':
#     # imu_ls = []
#     listener()