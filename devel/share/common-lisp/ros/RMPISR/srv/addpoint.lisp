; Auto-generated. Do not edit!


(cl:in-package RMPISR-srv)


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
    :initform 0)
   (type
    :reader type
    :initarg :type
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass addpoint-request (<addpoint-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <addpoint-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'addpoint-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name RMPISR-srv:<addpoint-request> is deprecated: use RMPISR-srv:addpoint-request instead.")))

(cl:ensure-generic-function 'xf-val :lambda-list '(m))
(cl:defmethod xf-val ((m <addpoint-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RMPISR-srv:xf-val is deprecated.  Use RMPISR-srv:xf instead.")
  (xf m))

(cl:ensure-generic-function 'yf-val :lambda-list '(m))
(cl:defmethod yf-val ((m <addpoint-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RMPISR-srv:yf-val is deprecated.  Use RMPISR-srv:yf instead.")
  (yf m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <addpoint-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RMPISR-srv:type-val is deprecated.  Use RMPISR-srv:type instead.")
  (type m))
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
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'type) 1 0)) ostream)
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
    (cl:setf (cl:slot-value msg 'type) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<addpoint-request>)))
  "Returns string type for a service object of type '<addpoint-request>"
  "RMPISR/addpointRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'addpoint-request)))
  "Returns string type for a service object of type 'addpoint-request"
  "RMPISR/addpointRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<addpoint-request>)))
  "Returns md5sum for a message object of type '<addpoint-request>"
  "4e6a9d759cb716b8e70b6066a387ed42")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'addpoint-request)))
  "Returns md5sum for a message object of type 'addpoint-request"
  "4e6a9d759cb716b8e70b6066a387ed42")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<addpoint-request>)))
  "Returns full string definition for message of type '<addpoint-request>"
  (cl:format cl:nil "int64 xf~%int64 yf~%bool type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'addpoint-request)))
  "Returns full string definition for message of type 'addpoint-request"
  (cl:format cl:nil "int64 xf~%int64 yf~%bool type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <addpoint-request>))
  (cl:+ 0
     8
     8
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <addpoint-request>))
  "Converts a ROS message object to a list"
  (cl:list 'addpoint-request
    (cl:cons ':xf (xf msg))
    (cl:cons ':yf (yf msg))
    (cl:cons ':type (type msg))
))
;//! \htmlinclude addpoint-response.msg.html

(cl:defclass <addpoint-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass addpoint-response (<addpoint-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <addpoint-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'addpoint-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name RMPISR-srv:<addpoint-response> is deprecated: use RMPISR-srv:addpoint-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <addpoint-response>) ostream)
  "Serializes a message object of type '<addpoint-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <addpoint-response>) istream)
  "Deserializes a message object of type '<addpoint-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<addpoint-response>)))
  "Returns string type for a service object of type '<addpoint-response>"
  "RMPISR/addpointResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'addpoint-response)))
  "Returns string type for a service object of type 'addpoint-response"
  "RMPISR/addpointResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<addpoint-response>)))
  "Returns md5sum for a message object of type '<addpoint-response>"
  "4e6a9d759cb716b8e70b6066a387ed42")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'addpoint-response)))
  "Returns md5sum for a message object of type 'addpoint-response"
  "4e6a9d759cb716b8e70b6066a387ed42")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<addpoint-response>)))
  "Returns full string definition for message of type '<addpoint-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'addpoint-response)))
  "Returns full string definition for message of type 'addpoint-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <addpoint-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <addpoint-response>))
  "Converts a ROS message object to a list"
  (cl:list 'addpoint-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'addpoint)))
  'addpoint-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'addpoint)))
  'addpoint-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'addpoint)))
  "Returns string type for a service object of type '<addpoint>"
  "RMPISR/addpoint")