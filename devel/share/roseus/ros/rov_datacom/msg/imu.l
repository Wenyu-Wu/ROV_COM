;; Auto-generated. Do not edit!


(when (boundp 'rov_datacom::imu)
  (if (not (find-package "ROV_DATACOM"))
    (make-package "ROV_DATACOM"))
  (shadow 'imu (find-package "ROV_DATACOM")))
(unless (find-package "ROV_DATACOM::IMU")
  (make-package "ROV_DATACOM::IMU"))

(in-package "ROS")
;;//! \htmlinclude imu.msg.html


(defclass rov_datacom::imu
  :super ros::object
  :slots (_roll _pitch _yaw ))

(defmethod rov_datacom::imu
  (:init
   (&key
    ((:roll __roll) 0.0)
    ((:pitch __pitch) 0.0)
    ((:yaw __yaw) 0.0)
    )
   (send-super :init)
   (setq _roll (float __roll))
   (setq _pitch (float __pitch))
   (setq _yaw (float __yaw))
   self)
  (:roll
   (&optional __roll)
   (if __roll (setq _roll __roll)) _roll)
  (:pitch
   (&optional __pitch)
   (if __pitch (setq _pitch __pitch)) _pitch)
  (:yaw
   (&optional __yaw)
   (if __yaw (setq _yaw __yaw)) _yaw)
  (:serialization-length
   ()
   (+
    ;; float64 _roll
    8
    ;; float64 _pitch
    8
    ;; float64 _yaw
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _roll
       (sys::poke _roll (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _pitch
       (sys::poke _pitch (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _yaw
       (sys::poke _yaw (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _roll
     (setq _roll (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _pitch
     (setq _pitch (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _yaw
     (setq _yaw (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get rov_datacom::imu :md5sum-) "eeec8b25a660789a89540dedcb2b06d6")
(setf (get rov_datacom::imu :datatype-) "rov_datacom/imu")
(setf (get rov_datacom::imu :definition-)
      "float64 roll
float64 pitch
float64 yaw
")



(provide :rov_datacom/imu "eeec8b25a660789a89540dedcb2b06d6")


