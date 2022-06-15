
(cl:in-package :asdf)

(defsystem "rov_datacom-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "imu" :depends-on ("_package_imu"))
    (:file "_package_imu" :depends-on ("_package"))
    (:file "raw_imu" :depends-on ("_package_raw_imu"))
    (:file "_package_raw_imu" :depends-on ("_package"))
  ))