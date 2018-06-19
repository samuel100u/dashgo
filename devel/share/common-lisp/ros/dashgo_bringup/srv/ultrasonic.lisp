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
  "992ce8a1687cec8c8bd883ec73ca41d1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ultrasonic-request)))
  "Returns md5sum for a message object of type 'ultrasonic-request"
  "992ce8a1687cec8c8bd883ec73ca41d1")
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
    :type cl:string
    :initform ""))
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
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ultrasonic-response>) istream)
  "Deserializes a message object of type '<ultrasonic-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'data) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'data) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
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
  "992ce8a1687cec8c8bd883ec73ca41d1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ultrasonic-response)))
  "Returns md5sum for a message object of type 'ultrasonic-response"
  "992ce8a1687cec8c8bd883ec73ca41d1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ultrasonic-response>)))
  "Returns full string definition for message of type '<ultrasonic-response>"
  (cl:format cl:nil "string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ultrasonic-response)))
  "Returns full string definition for message of type 'ultrasonic-response"
  (cl:format cl:nil "string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ultrasonic-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'data))
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