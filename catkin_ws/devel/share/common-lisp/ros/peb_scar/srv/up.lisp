; Auto-generated. Do not edit!


(cl:in-package peb_scar-srv)


;//! \htmlinclude up-request.msg.html

(cl:defclass <up-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass up-request (<up-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <up-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'up-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name peb_scar-srv:<up-request> is deprecated: use peb_scar-srv:up-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <up-request>) ostream)
  "Serializes a message object of type '<up-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <up-request>) istream)
  "Deserializes a message object of type '<up-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<up-request>)))
  "Returns string type for a service object of type '<up-request>"
  "peb_scar/upRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'up-request)))
  "Returns string type for a service object of type 'up-request"
  "peb_scar/upRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<up-request>)))
  "Returns md5sum for a message object of type '<up-request>"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'up-request)))
  "Returns md5sum for a message object of type 'up-request"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<up-request>)))
  "Returns full string definition for message of type '<up-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'up-request)))
  "Returns full string definition for message of type 'up-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <up-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <up-request>))
  "Converts a ROS message object to a list"
  (cl:list 'up-request
))
;//! \htmlinclude up-response.msg.html

(cl:defclass <up-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass up-response (<up-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <up-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'up-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name peb_scar-srv:<up-response> is deprecated: use peb_scar-srv:up-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <up-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader peb_scar-srv:success-val is deprecated.  Use peb_scar-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <up-response>) ostream)
  "Serializes a message object of type '<up-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <up-response>) istream)
  "Deserializes a message object of type '<up-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<up-response>)))
  "Returns string type for a service object of type '<up-response>"
  "peb_scar/upResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'up-response)))
  "Returns string type for a service object of type 'up-response"
  "peb_scar/upResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<up-response>)))
  "Returns md5sum for a message object of type '<up-response>"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'up-response)))
  "Returns md5sum for a message object of type 'up-response"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<up-response>)))
  "Returns full string definition for message of type '<up-response>"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'up-response)))
  "Returns full string definition for message of type 'up-response"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <up-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <up-response>))
  "Converts a ROS message object to a list"
  (cl:list 'up-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'up)))
  'up-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'up)))
  'up-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'up)))
  "Returns string type for a service object of type '<up>"
  "peb_scar/up")