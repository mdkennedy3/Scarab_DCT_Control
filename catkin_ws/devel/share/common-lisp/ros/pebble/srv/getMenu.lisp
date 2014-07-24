; Auto-generated. Do not edit!


(cl:in-package pebble-srv)


;//! \htmlinclude getMenu-request.msg.html

(cl:defclass <getMenu-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass getMenu-request (<getMenu-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <getMenu-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'getMenu-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pebble-srv:<getMenu-request> is deprecated: use pebble-srv:getMenu-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <getMenu-request>) ostream)
  "Serializes a message object of type '<getMenu-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <getMenu-request>) istream)
  "Deserializes a message object of type '<getMenu-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<getMenu-request>)))
  "Returns string type for a service object of type '<getMenu-request>"
  "pebble/getMenuRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'getMenu-request)))
  "Returns string type for a service object of type 'getMenu-request"
  "pebble/getMenuRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<getMenu-request>)))
  "Returns md5sum for a message object of type '<getMenu-request>"
  "ccba9f143bac9e35d9302ade4ff33f30")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'getMenu-request)))
  "Returns md5sum for a message object of type 'getMenu-request"
  "ccba9f143bac9e35d9302ade4ff33f30")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<getMenu-request>)))
  "Returns full string definition for message of type '<getMenu-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'getMenu-request)))
  "Returns full string definition for message of type 'getMenu-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <getMenu-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <getMenu-request>))
  "Converts a ROS message object to a list"
  (cl:list 'getMenu-request
))
;//! \htmlinclude getMenu-response.msg.html

(cl:defclass <getMenu-response> (roslisp-msg-protocol:ros-message)
  ((labels
    :reader labels
    :initarg :labels
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (services
    :reader services
    :initarg :services
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass getMenu-response (<getMenu-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <getMenu-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'getMenu-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pebble-srv:<getMenu-response> is deprecated: use pebble-srv:getMenu-response instead.")))

(cl:ensure-generic-function 'labels-val :lambda-list '(m))
(cl:defmethod labels-val ((m <getMenu-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pebble-srv:labels-val is deprecated.  Use pebble-srv:labels instead.")
  (labels m))

(cl:ensure-generic-function 'services-val :lambda-list '(m))
(cl:defmethod services-val ((m <getMenu-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pebble-srv:services-val is deprecated.  Use pebble-srv:services instead.")
  (services m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <getMenu-response>) ostream)
  "Serializes a message object of type '<getMenu-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'labels))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'labels))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'services))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'services))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <getMenu-response>) istream)
  "Deserializes a message object of type '<getMenu-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'labels) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'labels)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'services) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'services)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<getMenu-response>)))
  "Returns string type for a service object of type '<getMenu-response>"
  "pebble/getMenuResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'getMenu-response)))
  "Returns string type for a service object of type 'getMenu-response"
  "pebble/getMenuResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<getMenu-response>)))
  "Returns md5sum for a message object of type '<getMenu-response>"
  "ccba9f143bac9e35d9302ade4ff33f30")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'getMenu-response)))
  "Returns md5sum for a message object of type 'getMenu-response"
  "ccba9f143bac9e35d9302ade4ff33f30")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<getMenu-response>)))
  "Returns full string definition for message of type '<getMenu-response>"
  (cl:format cl:nil "string[] labels~%string[] services~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'getMenu-response)))
  "Returns full string definition for message of type 'getMenu-response"
  (cl:format cl:nil "string[] labels~%string[] services~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <getMenu-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'labels) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'services) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <getMenu-response>))
  "Converts a ROS message object to a list"
  (cl:list 'getMenu-response
    (cl:cons ':labels (labels msg))
    (cl:cons ':services (services msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'getMenu)))
  'getMenu-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'getMenu)))
  'getMenu-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'getMenu)))
  "Returns string type for a service object of type '<getMenu>"
  "pebble/getMenu")