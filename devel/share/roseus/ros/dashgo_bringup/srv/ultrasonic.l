;; Auto-generated. Do not edit!


(when (boundp 'dashgo_bringup::ultrasonic)
  (if (not (find-package "DASHGO_BRINGUP"))
    (make-package "DASHGO_BRINGUP"))
  (shadow 'ultrasonic (find-package "DASHGO_BRINGUP")))
(unless (find-package "DASHGO_BRINGUP::ULTRASONIC")
  (make-package "DASHGO_BRINGUP::ULTRASONIC"))
(unless (find-package "DASHGO_BRINGUP::ULTRASONICREQUEST")
  (make-package "DASHGO_BRINGUP::ULTRASONICREQUEST"))
(unless (find-package "DASHGO_BRINGUP::ULTRASONICRESPONSE")
  (make-package "DASHGO_BRINGUP::ULTRASONICRESPONSE"))

(in-package "ROS")





(defclass dashgo_bringup::ultrasonicRequest
  :super ros::object
  :slots ())

(defmethod dashgo_bringup::ultrasonicRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass dashgo_bringup::ultrasonicResponse
  :super ros::object
  :slots (_data ))

(defmethod dashgo_bringup::ultrasonicResponse
  (:init
   (&key
    ((:data __data) "")
    )
   (send-super :init)
   (setq _data (string __data))
   self)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; string _data
    4 (length _data)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _data
       (write-long (length _data) s) (princ _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _data
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _data (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass dashgo_bringup::ultrasonic
  :super ros::object
  :slots ())

(setf (get dashgo_bringup::ultrasonic :md5sum-) "992ce8a1687cec8c8bd883ec73ca41d1")
(setf (get dashgo_bringup::ultrasonic :datatype-) "dashgo_bringup/ultrasonic")
(setf (get dashgo_bringup::ultrasonic :request) dashgo_bringup::ultrasonicRequest)
(setf (get dashgo_bringup::ultrasonic :response) dashgo_bringup::ultrasonicResponse)

(defmethod dashgo_bringup::ultrasonicRequest
  (:response () (instance dashgo_bringup::ultrasonicResponse :init)))

(setf (get dashgo_bringup::ultrasonicRequest :md5sum-) "992ce8a1687cec8c8bd883ec73ca41d1")
(setf (get dashgo_bringup::ultrasonicRequest :datatype-) "dashgo_bringup/ultrasonicRequest")
(setf (get dashgo_bringup::ultrasonicRequest :definition-)
      "---
string data
")

(setf (get dashgo_bringup::ultrasonicResponse :md5sum-) "992ce8a1687cec8c8bd883ec73ca41d1")
(setf (get dashgo_bringup::ultrasonicResponse :datatype-) "dashgo_bringup/ultrasonicResponse")
(setf (get dashgo_bringup::ultrasonicResponse :definition-)
      "---
string data
")



(provide :dashgo_bringup/ultrasonic "992ce8a1687cec8c8bd883ec73ca41d1")


