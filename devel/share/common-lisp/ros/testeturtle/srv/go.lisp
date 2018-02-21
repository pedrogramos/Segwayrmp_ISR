; Auto-generated. Do not edit!


(cl:in-package testeturtle-srv)


;//! \htmlinclude go-request.msg.html

(cl:defclass <go-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass go-request (<go-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <go-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'go-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name testeturtle-srv:<go-request> is deprecated: use testeturtle-srv:go-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <go-request>) ostream)
  "Serializes a message object of type '<go-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <go-request>) istream)
  "Deserializes a message object of type '<go-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<go-request>)))
  "Returns string type for a service object of type '<go-request>"
  "testeturtle/goRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'go-request)))
  "Returns string type for a service object of type 'go-request"
  "testeturtle/goRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<go-request>)))
  "Returns md5sum for a message object of type '<go-request>"
  "9559ec07ba73a7e45bf3354138657b84")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'go-request)))
  "Returns md5sum for a message object of type 'go-request"
  "9559ec07ba73a7e45bf3354138657b84")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<go-request>)))
  "Returns full string definition for message of type '<go-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'go-request)))
  "Returns full string definition for message of type 'go-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <go-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <go-request>))
  "Converts a ROS message object to a list"
  (cl:list 'go-request
))
;//! \htmlinclude go-response.msg.html

(cl:defclass <go-response> (roslisp-msg-protocol:ros-message)
  ((var
    :reader var
    :initarg :var
    :type cl:integer
    :initform 0))
)

(cl:defclass go-response (<go-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <go-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'go-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name testeturtle-srv:<go-response> is deprecated: use testeturtle-srv:go-response instead.")))

(cl:ensure-generic-function 'var-val :lambda-list '(m))
(cl:defmethod var-val ((m <go-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader testeturtle-srv:var-val is deprecated.  Use testeturtle-srv:var instead.")
  (var m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <go-response>) ostream)
  "Serializes a message object of type '<go-response>"
  (cl:let* ((signed (cl:slot-value msg 'var)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <go-response>) istream)
  "Deserializes a message object of type '<go-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'var) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<go-response>)))
  "Returns string type for a service object of type '<go-response>"
  "testeturtle/goResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'go-response)))
  "Returns string type for a service object of type 'go-response"
  "testeturtle/goResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<go-response>)))
  "Returns md5sum for a message object of type '<go-response>"
  "9559ec07ba73a7e45bf3354138657b84")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'go-response)))
  "Returns md5sum for a message object of type 'go-response"
  "9559ec07ba73a7e45bf3354138657b84")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<go-response>)))
  "Returns full string definition for message of type '<go-response>"
  (cl:format cl:nil "int64 var~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'go-response)))
  "Returns full string definition for message of type 'go-response"
  (cl:format cl:nil "int64 var~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <go-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <go-response>))
  "Converts a ROS message object to a list"
  (cl:list 'go-response
    (cl:cons ':var (var msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'go)))
  'go-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'go)))
  'go-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'go)))
  "Returns string type for a service object of type '<go>"
  "testeturtle/go")