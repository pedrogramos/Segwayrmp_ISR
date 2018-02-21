; Auto-generated. Do not edit!


(cl:in-package testeturtle-srv)


;//! \htmlinclude addpoint-request.msg.html

(cl:defclass <addpoint-request> (roslisp-msg-protocol:ros-message)
  ((xf
    :reader xf
    :initarg :xf
    :type cl:integer
    :initform 0)
   (yf
    :reader yf
    :initarg :yf
    :type cl:integer
    :initform 0))
)

(cl:defclass addpoint-request (<addpoint-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <addpoint-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'addpoint-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name testeturtle-srv:<addpoint-request> is deprecated: use testeturtle-srv:addpoint-request instead.")))

(cl:ensure-generic-function 'xf-val :lambda-list '(m))
(cl:defmethod xf-val ((m <addpoint-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader testeturtle-srv:xf-val is deprecated.  Use testeturtle-srv:xf instead.")
  (xf m))

(cl:ensure-generic-function 'yf-val :lambda-list '(m))
(cl:defmethod yf-val ((m <addpoint-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader testeturtle-srv:yf-val is deprecated.  Use testeturtle-srv:yf instead.")
  (yf m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <addpoint-request>) ostream)
  "Serializes a message object of type '<addpoint-request>"
  (cl:let* ((signed (cl:slot-value msg 'xf)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'yf)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <addpoint-request>) istream)
  "Deserializes a message object of type '<addpoint-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'xf) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'yf) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<addpoint-request>)))
  "Returns string type for a service object of type '<addpoint-request>"
  "testeturtle/addpointRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'addpoint-request)))
  "Returns string type for a service object of type 'addpoint-request"
  "testeturtle/addpointRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<addpoint-request>)))
  "Returns md5sum for a message object of type '<addpoint-request>"
  "44836338e0a1e7646be09f64ff13a545")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'addpoint-request)))
  "Returns md5sum for a message object of type 'addpoint-request"
  "44836338e0a1e7646be09f64ff13a545")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<addpoint-request>)))
  "Returns full string definition for message of type '<addpoint-request>"
  (cl:format cl:nil "int64 xf~%int64 yf~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'addpoint-request)))
  "Returns full string definition for message of type 'addpoint-request"
  (cl:format cl:nil "int64 xf~%int64 yf~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <addpoint-request>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <addpoint-request>))
  "Converts a ROS message object to a list"
  (cl:list 'addpoint-request
    (cl:cons ':xf (xf msg))
    (cl:cons ':yf (yf msg))
))
;//! \htmlinclude addpoint-response.msg.html

(cl:defclass <addpoint-response> (roslisp-msg-protocol:ros-message)
  ((sum
    :reader sum
    :initarg :sum
    :type cl:integer
    :initform 0))
)

(cl:defclass addpoint-response (<addpoint-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <addpoint-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'addpoint-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name testeturtle-srv:<addpoint-response> is deprecated: use testeturtle-srv:addpoint-response instead.")))

(cl:ensure-generic-function 'sum-val :lambda-list '(m))
(cl:defmethod sum-val ((m <addpoint-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader testeturtle-srv:sum-val is deprecated.  Use testeturtle-srv:sum instead.")
  (sum m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <addpoint-response>) ostream)
  "Serializes a message object of type '<addpoint-response>"
  (cl:let* ((signed (cl:slot-value msg 'sum)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <addpoint-response>) istream)
  "Deserializes a message object of type '<addpoint-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sum) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<addpoint-response>)))
  "Returns string type for a service object of type '<addpoint-response>"
  "testeturtle/addpointResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'addpoint-response)))
  "Returns string type for a service object of type 'addpoint-response"
  "testeturtle/addpointResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<addpoint-response>)))
  "Returns md5sum for a message object of type '<addpoint-response>"
  "44836338e0a1e7646be09f64ff13a545")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'addpoint-response)))
  "Returns md5sum for a message object of type 'addpoint-response"
  "44836338e0a1e7646be09f64ff13a545")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<addpoint-response>)))
  "Returns full string definition for message of type '<addpoint-response>"
  (cl:format cl:nil "int64 sum~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'addpoint-response)))
  "Returns full string definition for message of type 'addpoint-response"
  (cl:format cl:nil "int64 sum~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <addpoint-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <addpoint-response>))
  "Converts a ROS message object to a list"
  (cl:list 'addpoint-response
    (cl:cons ':sum (sum msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'addpoint)))
  'addpoint-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'addpoint)))
  'addpoint-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'addpoint)))
  "Returns string type for a service object of type '<addpoint>"
  "testeturtle/addpoint")