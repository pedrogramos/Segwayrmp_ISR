; Auto-generated. Do not edit!


(cl:in-package testeturtle-srv)


;//! \htmlinclude talk-request.msg.html

(cl:defclass <talk-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass talk-request (<talk-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <talk-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'talk-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name testeturtle-srv:<talk-request> is deprecated: use testeturtle-srv:talk-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <talk-request>) ostream)
  "Serializes a message object of type '<talk-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <talk-request>) istream)
  "Deserializes a message object of type '<talk-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<talk-request>)))
  "Returns string type for a service object of type '<talk-request>"
  "testeturtle/talkRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'talk-request)))
  "Returns string type for a service object of type 'talk-request"
  "testeturtle/talkRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<talk-request>)))
  "Returns md5sum for a message object of type '<talk-request>"
  "58ba147ce3095b36344060f1e5dd0b05")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'talk-request)))
  "Returns md5sum for a message object of type 'talk-request"
  "58ba147ce3095b36344060f1e5dd0b05")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<talk-request>)))
  "Returns full string definition for message of type '<talk-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'talk-request)))
  "Returns full string definition for message of type 'talk-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <talk-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <talk-request>))
  "Converts a ROS message object to a list"
  (cl:list 'talk-request
))
;//! \htmlinclude talk-response.msg.html

(cl:defclass <talk-response> (roslisp-msg-protocol:ros-message)
  ((val
    :reader val
    :initarg :val
    :type cl:integer
    :initform 0))
)

(cl:defclass talk-response (<talk-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <talk-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'talk-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name testeturtle-srv:<talk-response> is deprecated: use testeturtle-srv:talk-response instead.")))

(cl:ensure-generic-function 'val-val :lambda-list '(m))
(cl:defmethod val-val ((m <talk-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader testeturtle-srv:val-val is deprecated.  Use testeturtle-srv:val instead.")
  (val m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <talk-response>) ostream)
  "Serializes a message object of type '<talk-response>"
  (cl:let* ((signed (cl:slot-value msg 'val)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <talk-response>) istream)
  "Deserializes a message object of type '<talk-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'val) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<talk-response>)))
  "Returns string type for a service object of type '<talk-response>"
  "testeturtle/talkResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'talk-response)))
  "Returns string type for a service object of type 'talk-response"
  "testeturtle/talkResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<talk-response>)))
  "Returns md5sum for a message object of type '<talk-response>"
  "58ba147ce3095b36344060f1e5dd0b05")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'talk-response)))
  "Returns md5sum for a message object of type 'talk-response"
  "58ba147ce3095b36344060f1e5dd0b05")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<talk-response>)))
  "Returns full string definition for message of type '<talk-response>"
  (cl:format cl:nil "int64 val~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'talk-response)))
  "Returns full string definition for message of type 'talk-response"
  (cl:format cl:nil "int64 val~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <talk-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <talk-response>))
  "Converts a ROS message object to a list"
  (cl:list 'talk-response
    (cl:cons ':val (val msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'talk)))
  'talk-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'talk)))
  'talk-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'talk)))
  "Returns string type for a service object of type '<talk>"
  "testeturtle/talk")