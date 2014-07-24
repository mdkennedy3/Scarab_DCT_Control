; Auto-generated. Do not edit!


(cl:in-package peb_scar-srv)


;//! \htmlinclude clear-request.msg.html

(cl:defclass <clear-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass clear-request (<clear-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <clear-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'clear-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name peb_scar-srv:<clear-request> is deprecated: use peb_scar-srv:clear-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <clear-request>) ostream)
  "Serializes a message object of type '<clear-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <clear-request>) istream)
  "Deserializes a message object of type '<clear-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<clear-request>)))
  "Returns string type for a service object of type '<clear-request>"
  "peb_scar/clearRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'clear-request)))
  "Returns string type for a service object of type 'clear-request"
  "peb_scar/clearRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<clear-request>)))
  "Returns md5sum for a message object of type '<clear-request>"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'clear-request)))
  "Returns md5sum for a message object of type 'clear-request"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<clear-request>)))
  "Returns full string definition for message of type '<clear-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'clear-request)))
  "Returns full string definition for message of type 'clear-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <clear-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <clear-request>))
  "Converts a ROS message object to a list"
  (cl:list 'clear-request
))
;//! \htmlinclude clear-response.msg.html

(cl:defclass <clear-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass clear-response (<clear-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <clear-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'clear-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name peb_scar-srv:<clear-response> is deprecated: use peb_scar-srv:clear-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <clear-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader peb_scar-srv:success-val is deprecated.  Use peb_scar-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <clear-response>) ostream)
  "Serializes a message object of type '<clear-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <clear-response>) istream)
  "Deserializes a message object of type '<clear-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<clear-response>)))
  "Returns string type for a service object of type '<clear-response>"
  "peb_scar/clearResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'clear-response)))
  "Returns string type for a service object of type 'clear-response"
  "peb_scar/clearResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<clear-response>)))
  "Returns md5sum for a message object of type '<clear-response>"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'clear-response)))
  "Returns md5sum for a message object of type 'clear-response"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<clear-response>)))
  "Returns full string definition for message of type '<clear-response>"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'clear-response)))
  "Returns full string definition for message of type 'clear-response"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <clear-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <clear-response>))
  "Converts a ROS message object to a list"
  (cl:list 'clear-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'clear)))
  'clear-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'clear)))
  'clear-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'clear)))
  "Returns string type for a service object of type '<clear>"
  "peb_scar/clear")