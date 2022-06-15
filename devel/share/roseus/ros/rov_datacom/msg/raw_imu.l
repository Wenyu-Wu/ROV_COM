;; Auto-generated. Do not edit!


(when (boundp 'rov_datacom::raw_imu)
  (if (not (find-package "ROV_DATACOM"))
    (make-package "ROV_DATACOM"))
  (shadow 'raw_imu (find-package "ROV_DATACOM")))
(unless (find-package "ROV_DATACOM::RAW_IMU")
  (make-package "ROV_DATACOM::RAW_IMU"))

(in-package "ROS")
;;//! \htmlinclude raw_imu.msg.html


(defclass rov_datacom::raw_imu
  :super ros::object
  :slots (_time _acc _gyro _mag ))

(defmethod rov_datacom::raw_imu
  (:init
   (&key
    ((:time __time) 0)
    ((:acc __acc) (make-array 3 :initial-element 0.0 :element-type :float))
    ((:gyro __gyro) (make-array 3 :initial-element 0.0 :element-type :float))
    ((:mag __mag) (make-array 3 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _time (round __time))
   (setq _acc __acc)
   (setq _gyro __gyro)
   (setq _mag __mag)
   self)
  (:time
   (&optional __time)
   (if __time (setq _time __time)) _time)
  (:acc
   (&optional __acc)
   (if __acc (setq _acc __acc)) _acc)
  (:gyro
   (&optional __gyro)
   (if __gyro (setq _gyro __gyro)) _gyro)
  (:mag
   (&optional __mag)
   (if __mag (setq _mag __mag)) _mag)
  (:serialization-length
   ()
   (+
    ;; uint32 _time
    4
    ;; float64[3] _acc
    (* 8    3)
    ;; float64[3] _gyro
    (* 8    3)
    ;; float64[3] _mag
    (* 8    3)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _time
       (write-long _time s)
     ;; float64[3] _acc
     (dotimes (i 3)
       (sys::poke (elt _acc i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[3] _gyro
     (dotimes (i 3)
       (sys::poke (elt _gyro i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[3] _mag
     (dotimes (i 3)
       (sys::poke (elt _mag i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _time
     (setq _time (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64[3] _acc
   (dotimes (i (length _acc))
     (setf (elt _acc i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[3] _gyro
   (dotimes (i (length _gyro))
     (setf (elt _gyro i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[3] _mag
   (dotimes (i (length _mag))
     (setf (elt _mag i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;;
   self)
  )

(setf (get rov_datacom::raw_imu :md5sum-) "664714df4d0d5aab2c4e8d96fd461349")
(setf (get rov_datacom::raw_imu :datatype-) "rov_datacom/raw_imu")
(setf (get rov_datacom::raw_imu :definition-)
      "uint32 time
float64[3] acc
float64[3] gyro
float64[3] mag
")



(provide :rov_datacom/raw_imu "664714df4d0d5aab2c4e8d96fd461349")


