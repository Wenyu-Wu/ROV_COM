
# Import sensor data
def fusion(dat_stack,r):
    sample_rate = r # 10Hz determined by ros rate
    samplePeriod = 1/r
    time = dat_stack['time']
    gyrX = dat_stack['gyro'][:,0]
    gyrY = dat_stack['gyro'][:,1]
    gyrZ = dat_stack['gyro'][:,2]
    accX = dat_stack['acc'][:,0]
    accY = dat_stack['acc'][:,1]
    accZ = dat_stack['acc'][:,2]
    magnetometer = dat_stack['mag']
    return accX

