;; Auto-generated. Do not edit!


(when (boundp 'beginner_tutorials::Hello)
  (if (not (find-package "BEGINNER_TUTORIALS"))
    (make-package "BEGINNER_TUTORIALS"))
  (shadow 'Hello (find-package "BEGINNER_TUTORIALS")))
(unless (find-package "BEGINNER_TUTORIALS::HELLO")
  (make-package "BEGINNER_TUTORIALS::HELLO"))

(in-package "ROS")
;;//! \htmlinclude Hello.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass beginner_tutorials::Hello
  :super ros::object
  :slots (_header _hello _pos ))

(defmethod beginner_tutorials::Hello
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:hello __hello) "")
    ((:pos __pos) (instance geometry_msgs::Vector3 :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _hello (string __hello))
   (setq _pos __pos)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:hello
   (&optional __hello)
   (if __hello (setq _hello __hello)) _hello)
  (:pos
   (&rest __pos)
   (if (keywordp (car __pos))
       (send* _pos __pos)
     (progn
       (if __pos (setq _pos (car __pos)))
       _pos)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _hello
    4 (length _hello)
    ;; geometry_msgs/Vector3 _pos
    (send _pos :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _hello
       (write-long (length _hello) s) (princ _hello s)
     ;; geometry_msgs/Vector3 _pos
       (send _pos :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _hello
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _hello (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Vector3 _pos
     (send _pos :deserialize buf ptr-) (incf ptr- (send _pos :serialization-length))
   ;;
   self)
  )

(setf (get beginner_tutorials::Hello :md5sum-) "a5d5980a408f71ddd964a3f012b4dd59")
(setf (get beginner_tutorials::Hello :datatype-) "beginner_tutorials/Hello")
(setf (get beginner_tutorials::Hello :definition-)
      "Header header
string hello
geometry_msgs/Vector3 pos

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :beginner_tutorials/Hello "a5d5980a408f71ddd964a3f012b4dd59")


