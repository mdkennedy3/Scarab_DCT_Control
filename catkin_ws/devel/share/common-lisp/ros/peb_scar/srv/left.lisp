; Auto-generated. Do not edit!


(cl:in-package peb_scar-srv)


;//! \htmlinclude left-request.msg.html

(cl:defclass <left-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass left-request (<left-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <left-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'left-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name peb_scar-srv:<left-request> is deprecated: use peb_scar-srv:left-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <left-request>) ostream)
  "Serializes a message object of type '<left-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <left-request>) istream)
  "Deserializes a message object of type '<left-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<left-request>)))
  "Returns string type for a service object of type '<left-request>"
  "peb_scar/leftRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'left-request)))
  "Returns string type for a service object of type 'left-request"
  "peb_scar/leftRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<left-request>)))
  "Returns md5sum for a message object of type '<left-request>"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'left-request)))
  "Returns md5sum for a message object of type 'left-request"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<left-request>)))
  "Returns full string definition for message of type '<left-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'left-request)))
  "Returns full string definition for message of type 'left-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <left-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <left-request>))
  "Converts a ROS message object to a list"
  (cl:list 'left-request
))
;//! \htmlinclude left-response.msg.html

(cl:defclass <left-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass left-response (<left-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <left-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'left-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name peb_scar-srv:<left-response> is deprecated: use peb_scar-srv:left-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <left-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader peb_scar-srv:success-val is deprecated.  Use peb_scar-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <left-response>) ostream)
  "Serializes a message object of type '<left-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <left-response>) istream)
  "Deserializes a message object of type '<left-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<left-response>)))
  "Returns string type for a service object of type '<left-response>"
  "peb_scar/leftResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'left-response)))
  "Returns string type for a service object of type 'left-response"
  "peb_scar/leftResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<left-response>)))
  "Returns md5sum for a message object of type '<left-response>"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'left-response)))
  "Returns md5sum for a message object of type 'left-response"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<left-response>)))
  "Returns full string definition for message of type '<left-response>"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'left-response)))
  "Returns full string definition for message of type 'left-response"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <left-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <left-response>))
  "Converts a ROS message object to a list"
  (cl:list 'left-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'left)))
  'left-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'left)))
  'left-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'left)))
  "Returns string type for a service object of type '<left>"
  "peb_scar/left")