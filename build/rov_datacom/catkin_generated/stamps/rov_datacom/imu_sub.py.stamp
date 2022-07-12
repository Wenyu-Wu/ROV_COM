#!/usr/bin/env python
import rospy
import sys
import numpy as np
# from rov_datacom.msg import raw_imu
from sensor_msgs.msg import Imu

import os
# Please modify absolute path based on your directory
new_path = str(os.getcwd())+'/Research/rov_ws/src/rov_datacom/scripts'
sys.path.append(new_path)
from imu_fusion import fusion

imu_ls = [] # apologize for global variable

class ahrs_raw:
    def __init__(self,data):
        self.time = data.header.stamp.secs
        self.acc = data.linear_accleration
        self.gyro = data.angular_velocity
        # self.mag = data.mag

def prepro_data(imu_e,imu_l):
    stack_dict = {}
    stack_dict['time'] = np.array([imu_e.time,imu_l.time])
    stack_dict['acc'] = np.array([imu_e.acc,imu_l.acc])
    stack_dict['gyro'] = np.array([imu_e.gyro,imu_l.gyro])
    stack_dict['mag'] = np.array([imu_e.mag,imu_l.mag])
    return stack_dict

def fusion_handle(imu_e,imu_l):
    data_dict = prepro_data(imu_e,imu_l)
    ret = fusion(data_dict,10)
    print(ret)
    return None

def callback(data):
    rospy.loginfo(data)
    # global imu_ls
    # new_raw = ahrs_raw(data)
    # imu_ls.append(new_raw)
    # if (len(imu_ls) > 5):
    #     imu_ls = imu_ls[-5:]
    # if (len(imu_ls) == 1):
    #     return
    # dat_1 = imu_ls[-1]
    # dat_2 = imu_ls[-2]
    # fusion_loc = fusion_handle(dat_1,dat_2)
    # print(len(imu_ls))

rospy.init_node('sensor_listen',anonymous=True)
rospy.Subscriber("imu_topic",Imu,callback)
rospy.spin()
# while not rospy.is_shutdown():
#     rospy.spin()
    # rospy.sleep(1)
    # print(len(imu_ls))
