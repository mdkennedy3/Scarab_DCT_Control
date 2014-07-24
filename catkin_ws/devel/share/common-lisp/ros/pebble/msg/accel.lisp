; Auto-generated. Do not edit!


(cl:in-package pebble-msg)


;//! \htmlinclude accel.msg.html

(cl:defclass <accel> (roslisp-msg-protocol:ros-message)
  ((accel
    :reader accel
    :initarg :accel
    :type cl:integer
    :initform 0))
)

(cl:defclass accel (<accel>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <accel>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'accel)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pebble-msg:<accel> is deprecated: use pebble-msg:accel instead.")))

(cl:ensure-generic-function 'accel-val :lambda-list '(m))
(cl:defmethod accel-val ((m <accel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pebble-msg:accel-val is deprecated.  Use pebble-msg:accel instead.")
  (accel m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <accel>) ostream)
  "Serializes a message object of type '<accel>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'accel)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'accel)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'accel)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'accel)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <accel>) istream)
  "Deserializes a message object of type '<accel>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'accel)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'accel)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'accel)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'accel)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<accel>)))
  "Returns string type for a message object of type '<accel>"
  "pebble/accel")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'accel)))
  "Returns string type for a message object of type 'accel"
  "pebble/accel")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<accel>)))
  "Returns md5sum for a message object of type '<accel>"
  "243f697ebd10703a008dc2d364aab12d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'accel)))
  "Returns md5sum for a message object of type 'accel"
  "243f697ebd10703a008dc2d364aab12d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<accel>)))
  "Returns full string definition for message of type '<accel>"
  (cl:format cl:nil "uint32 accel~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'accel)))
  "Returns full string definition for message of type 'accel"
  (cl:format cl:nil "uint32 accel~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <accel>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <accel>))
  "Converts a ROS message object to a list"
  (cl:list 'accel
    (cl:cons ':accel (accel msg))
))
