; Auto-generated. Do not edit!


(cl:in-package testeturtle-srv)


;//! \htmlinclude stop-request.msg.html

(cl:defclass <stop-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass stop-request (<stop-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <stop-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'stop-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name testeturtle-srv:<stop-request> is deprecated: use testeturtle-srv:stop-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <stop-request>) ostream)
  "Serializes a message object of type '<stop-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <stop-request>) istream)
  "Deserializes a message object of type '<stop-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<stop-request>)))
  "Returns string type for a service object of type '<stop-request>"
  "testeturtle/stopRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'stop-request)))
  "Returns string type for a service object of type 'stop-request"
  "testeturtle/stopRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<stop-request>)))
  "Returns md5sum for a message object of type '<stop-request>"
  "839f326c2e6df1e173665bdc360e82bd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'stop-request)))
  "Returns md5sum for a message object of type 'stop-request"
  "839f326c2e6df1e173665bdc360e82bd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<stop-request>)))
  "Returns full string definition for message of type '<stop-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'stop-request)))
  "Returns full string definition for message of type 'stop-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <stop-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <stop-request>))
  "Converts a ROS message object to a list"
  (cl:list 'stop-request
))
;//! \htmlinclude stop-response.msg.html

(cl:defclass <stop-response> (roslisp-msg-protocol:ros-message)
  ((stop
    :reader stop
    :initarg :stop
    :type cl:integer
    :initform 0))
)

(cl:defclass stop-response (<stop-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <stop-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'stop-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name testeturtle-srv:<stop-response> is deprecated: use testeturtle-srv:stop-response instead.")))

(cl:ensure-generic-function 'stop-val :lambda-list '(m))
(cl:defmethod stop-val ((m <stop-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader testeturtle-srv:stop-val is deprecated.  Use testeturtle-srv:stop instead.")
  (stop m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <stop-response>) ostream)
  "Serializes a message object of type '<stop-response>"
  (cl:let* ((signed (cl:slot-value msg 'stop)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <stop-response>) istream)
  "Deserializes a message object of type '<stop-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'stop) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<stop-response>)))
  "Returns string type for a service object of type '<stop-response>"
  "testeturtle/stopResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'stop-response)))
  "Returns string type for a service object of type 'stop-response"
  "testeturtle/stopResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<stop-response>)))
  "Returns md5sum for a message object of type '<stop-response>"
  "839f326c2e6df1e173665bdc360e82bd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'stop-response)))
  "Returns md5sum for a message object of type 'stop-response"
  "839f326c2e6df1e173665bdc360e82bd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<stop-response>)))
  "Returns full string definition for message of type '<stop-response>"
  (cl:format cl:nil "int64 stop~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'stop-response)))
  "Returns full string definition for message of type 'stop-response"
  (cl:format cl:nil "int64 stop~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <stop-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <stop-response>))
  "Converts a ROS message object to a list"
  (cl:list 'stop-response
    (cl:cons ':stop (stop msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'stop)))
  'stop-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'stop)))
  'stop-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'stop)))
  "Returns string type for a service object of type '<stop>"
  "testeturtle/stop")