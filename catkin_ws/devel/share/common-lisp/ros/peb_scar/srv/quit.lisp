; Auto-generated. Do not edit!


(cl:in-package peb_scar-srv)


;//! \htmlinclude quit-request.msg.html

(cl:defclass <quit-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass quit-request (<quit-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <quit-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'quit-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name peb_scar-srv:<quit-request> is deprecated: use peb_scar-srv:quit-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <quit-request>) ostream)
  "Serializes a message object of type '<quit-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <quit-request>) istream)
  "Deserializes a message object of type '<quit-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<quit-request>)))
  "Returns string type for a service object of type '<quit-request>"
  "peb_scar/quitRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'quit-request)))
  "Returns string type for a service object of type 'quit-request"
  "peb_scar/quitRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<quit-request>)))
  "Returns md5sum for a message object of type '<quit-request>"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'quit-request)))
  "Returns md5sum for a message object of type 'quit-request"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<quit-request>)))
  "Returns full string definition for message of type '<quit-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'quit-request)))
  "Returns full string definition for message of type 'quit-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <quit-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <quit-request>))
  "Converts a ROS message object to a list"
  (cl:list 'quit-request
))
;//! \htmlinclude quit-response.msg.html

(cl:defclass <quit-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass quit-response (<quit-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <quit-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'quit-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name peb_scar-srv:<quit-response> is deprecated: use peb_scar-srv:quit-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <quit-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader peb_scar-srv:success-val is deprecated.  Use peb_scar-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <quit-response>) ostream)
  "Serializes a message object of type '<quit-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <quit-response>) istream)
  "Deserializes a message object of type '<quit-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<quit-response>)))
  "Returns string type for a service object of type '<quit-response>"
  "peb_scar/quitResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'quit-response)))
  "Returns string type for a service object of type 'quit-response"
  "peb_scar/quitResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<quit-response>)))
  "Returns md5sum for a message object of type '<quit-response>"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'quit-response)))
  "Returns md5sum for a message object of type 'quit-response"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<quit-response>)))
  "Returns full string definition for message of type '<quit-response>"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'quit-response)))
  "Returns full string definition for message of type 'quit-response"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <quit-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <quit-response>))
  "Converts a ROS message object to a list"
  (cl:list 'quit-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'quit)))
  'quit-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'quit)))
  'quit-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'quit)))
  "Returns string type for a service object of type '<quit>"
  "peb_scar/quit")