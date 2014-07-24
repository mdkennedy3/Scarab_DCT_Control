; Auto-generated. Do not edit!


(cl:in-package pebble-srv)


;//! \htmlinclude callMenu-request.msg.html

(cl:defclass <callMenu-request> (roslisp-msg-protocol:ros-message)
  ((item
    :reader item
    :initarg :item
    :type cl:integer
    :initform 0))
)

(cl:defclass callMenu-request (<callMenu-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <callMenu-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'callMenu-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pebble-srv:<callMenu-request> is deprecated: use pebble-srv:callMenu-request instead.")))

(cl:ensure-generic-function 'item-val :lambda-list '(m))
(cl:defmethod item-val ((m <callMenu-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pebble-srv:item-val is deprecated.  Use pebble-srv:item instead.")
  (item m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <callMenu-request>) ostream)
  "Serializes a message object of type '<callMenu-request>"
  (cl:let* ((signed (cl:slot-value msg 'item)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <callMenu-request>) istream)
  "Deserializes a message object of type '<callMenu-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'item) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<callMenu-request>)))
  "Returns string type for a service object of type '<callMenu-request>"
  "pebble/callMenuRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'callMenu-request)))
  "Returns string type for a service object of type 'callMenu-request"
  "pebble/callMenuRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<callMenu-request>)))
  "Returns md5sum for a message object of type '<callMenu-request>"
  "22e4bc82a017518e6f1eda9e545219e7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'callMenu-request)))
  "Returns md5sum for a message object of type 'callMenu-request"
  "22e4bc82a017518e6f1eda9e545219e7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<callMenu-request>)))
  "Returns full string definition for message of type '<callMenu-request>"
  (cl:format cl:nil "int64 item~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'callMenu-request)))
  "Returns full string definition for message of type 'callMenu-request"
  (cl:format cl:nil "int64 item~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <callMenu-request>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <callMenu-request>))
  "Converts a ROS message object to a list"
  (cl:list 'callMenu-request
    (cl:cons ':item (item msg))
))
;//! \htmlinclude callMenu-response.msg.html

(cl:defclass <callMenu-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass callMenu-response (<callMenu-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <callMenu-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'callMenu-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pebble-srv:<callMenu-response> is deprecated: use pebble-srv:callMenu-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <callMenu-response>) ostream)
  "Serializes a message object of type '<callMenu-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <callMenu-response>) istream)
  "Deserializes a message object of type '<callMenu-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<callMenu-response>)))
  "Returns string type for a service object of type '<callMenu-response>"
  "pebble/callMenuResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'callMenu-response)))
  "Returns string type for a service object of type 'callMenu-response"
  "pebble/callMenuResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<callMenu-response>)))
  "Returns md5sum for a message object of type '<callMenu-response>"
  "22e4bc82a017518e6f1eda9e545219e7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'callMenu-response)))
  "Returns md5sum for a message object of type 'callMenu-response"
  "22e4bc82a017518e6f1eda9e545219e7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<callMenu-response>)))
  "Returns full string definition for message of type '<callMenu-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'callMenu-response)))
  "Returns full string definition for message of type 'callMenu-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <callMenu-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <callMenu-response>))
  "Converts a ROS message object to a list"
  (cl:list 'callMenu-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'callMenu)))
  'callMenu-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'callMenu)))
  'callMenu-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'callMenu)))
  "Returns string type for a service object of type '<callMenu>"
  "pebble/callMenu")