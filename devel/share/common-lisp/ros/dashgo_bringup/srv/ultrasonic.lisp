; Auto-generated. Do not edit!


(cl:in-package dashgo_bringup-srv)


;//! \htmlinclude ultrasonic-request.msg.html

(cl:defclass <ultrasonic-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass ultrasonic-request (<ultrasonic-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ultrasonic-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ultrasonic-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dashgo_bringup-srv:<ultrasonic-request> is deprecated: use dashgo_bringup-srv:ultrasonic-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ultrasonic-request>) ostream)
  "Serializes a message object of type '<ultrasonic-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ultrasonic-request>) istream)
  "Deserializes a message object of type '<ultrasonic-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ultrasonic-request>)))
  "Returns string type for a service object of type '<ultrasonic-request>"
  "dashgo_bringup/ultrasonicRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ultrasonic-request)))
  "Returns string type for a service object of type 'ultrasonic-request"
  "dashgo_bringup/ultrasonicRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ultrasonic-request>)))
  "Returns md5sum for a message object of type '<ultrasonic-request>"
  "563b27884d008b0d2adff54dc1f9e4f5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ultrasonic-request)))
  "Returns md5sum for a message object of type 'ultrasonic-request"
  "563b27884d008b0d2adff54dc1f9e4f5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ultrasonic-request>)))
  "Returns full string definition for message of type '<ultrasonic-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ultrasonic-request)))
  "Returns full string definition for message of type 'ultrasonic-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ultrasonic-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ultrasonic-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ultrasonic-request
))
;//! \htmlinclude ultrasonic-response.msg.html

(cl:defclass <ultrasonic-response> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass ultrasonic-response (<ultrasonic-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ultrasonic-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ultrasonic-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dashgo_bringup-srv:<ultrasonic-response> is deprecated: use dashgo_bringup-srv:ultrasonic-response instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <ultrasonic-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dashgo_bringup-srv:data-val is deprecated.  Use dashgo_bringup-srv:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ultrasonic-response>) ostream)
  "Serializes a message object of type '<ultrasonic-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ultrasonic-response>) istream)
  "Deserializes a message object of type '<ultrasonic-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ultrasonic-response>)))
  "Returns string type for a service object of type '<ultrasonic-response>"
  "dashgo_bringup/ultrasonicResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ultrasonic-response)))
  "Returns string type for a service object of type 'ultrasonic-response"
  "dashgo_bringup/ultrasonicResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ultrasonic-response>)))
  "Returns md5sum for a message object of type '<ultrasonic-response>"
  "563b27884d008b0d2adff54dc1f9e4f5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ultrasonic-response)))
  "Returns md5sum for a message object of type 'ultrasonic-response"
  "563b27884d008b0d2adff54dc1f9e4f5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ultrasonic-response>)))
  "Returns full string definition for message of type '<ultrasonic-response>"
  (cl:format cl:nil "int32[] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ultrasonic-response)))
  "Returns full string definition for message of type 'ultrasonic-response"
  (cl:format cl:nil "int32[] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ultrasonic-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ultrasonic-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ultrasonic-response
    (cl:cons ':data (data msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ultrasonic)))
  'ultrasonic-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ultrasonic)))
  'ultrasonic-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ultrasonic)))
  "Returns string type for a service object of type '<ultrasonic>"
  "dashgo_bringup/ultrasonic")