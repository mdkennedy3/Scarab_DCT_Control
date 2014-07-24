; Auto-generated. Do not edit!


(cl:in-package adc_voltage-msg)


;//! \htmlinclude AdcVoltage.msg.html

(cl:defclass <AdcVoltage> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (v0
    :reader v0
    :initarg :v0
    :type cl:float
    :initform 0.0)
   (v1
    :reader v1
    :initarg :v1
    :type cl:float
    :initform 0.0)
   (v2
    :reader v2
    :initarg :v2
    :type cl:float
    :initform 0.0)
   (v3
    :reader v3
    :initarg :v3
    :type cl:float
    :initform 0.0)
   (v4
    :reader v4
    :initarg :v4
    :type cl:float
    :initform 0.0)
   (v5
    :reader v5
    :initarg :v5
    :type cl:float
    :initform 0.0))
)

(cl:defclass AdcVoltage (<AdcVoltage>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AdcVoltage>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AdcVoltage)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name adc_voltage-msg:<AdcVoltage> is deprecated: use adc_voltage-msg:AdcVoltage instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <AdcVoltage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader adc_voltage-msg:header-val is deprecated.  Use adc_voltage-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'v0-val :lambda-list '(m))
(cl:defmethod v0-val ((m <AdcVoltage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader adc_voltage-msg:v0-val is deprecated.  Use adc_voltage-msg:v0 instead.")
  (v0 m))

(cl:ensure-generic-function 'v1-val :lambda-list '(m))
(cl:defmethod v1-val ((m <AdcVoltage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader adc_voltage-msg:v1-val is deprecated.  Use adc_voltage-msg:v1 instead.")
  (v1 m))

(cl:ensure-generic-function 'v2-val :lambda-list '(m))
(cl:defmethod v2-val ((m <AdcVoltage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader adc_voltage-msg:v2-val is deprecated.  Use adc_voltage-msg:v2 instead.")
  (v2 m))

(cl:ensure-generic-function 'v3-val :lambda-list '(m))
(cl:defmethod v3-val ((m <AdcVoltage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader adc_voltage-msg:v3-val is deprecated.  Use adc_voltage-msg:v3 instead.")
  (v3 m))

(cl:ensure-generic-function 'v4-val :lambda-list '(m))
(cl:defmethod v4-val ((m <AdcVoltage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader adc_voltage-msg:v4-val is deprecated.  Use adc_voltage-msg:v4 instead.")
  (v4 m))

(cl:ensure-generic-function 'v5-val :lambda-list '(m))
(cl:defmethod v5-val ((m <AdcVoltage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader adc_voltage-msg:v5-val is deprecated.  Use adc_voltage-msg:v5 instead.")
  (v5 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AdcVoltage>) ostream)
  "Serializes a message object of type '<AdcVoltage>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'v0))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'v1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'v2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'v3))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'v4))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'v5))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AdcVoltage>) istream)
  "Deserializes a message object of type '<AdcVoltage>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'v0) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'v1) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'v2) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'v3) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'v4) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'v5) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AdcVoltage>)))
  "Returns string type for a message object of type '<AdcVoltage>"
  "adc_voltage/AdcVoltage")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AdcVoltage)))
  "Returns string type for a message object of type 'AdcVoltage"
  "adc_voltage/AdcVoltage")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AdcVoltage>)))
  "Returns md5sum for a message object of type '<AdcVoltage>"
  "02c73e250b894e3099d2ca0afdf9971f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AdcVoltage)))
  "Returns md5sum for a message object of type 'AdcVoltage"
  "02c73e250b894e3099d2ca0afdf9971f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AdcVoltage>)))
  "Returns full string definition for message of type '<AdcVoltage>"
  (cl:format cl:nil "Header header~%float32 v0~%float32 v1~%float32 v2~%float32 v3~%float32 v4~%float32 v5~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AdcVoltage)))
  "Returns full string definition for message of type 'AdcVoltage"
  (cl:format cl:nil "Header header~%float32 v0~%float32 v1~%float32 v2~%float32 v3~%float32 v4~%float32 v5~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AdcVoltage>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AdcVoltage>))
  "Converts a ROS message object to a list"
  (cl:list 'AdcVoltage
    (cl:cons ':header (header msg))
    (cl:cons ':v0 (v0 msg))
    (cl:cons ':v1 (v1 msg))
    (cl:cons ':v2 (v2 msg))
    (cl:cons ':v3 (v3 msg))
    (cl:cons ':v4 (v4 msg))
    (cl:cons ':v5 (v5 msg))
))
