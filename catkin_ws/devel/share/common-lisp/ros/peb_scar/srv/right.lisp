; Auto-generated. Do not edit!


(cl:in-package peb_scar-srv)


;//! \htmlinclude right-request.msg.html

(cl:defclass <right-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass right-request (<right-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <right-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'right-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name peb_scar-srv:<right-request> is deprecated: use peb_scar-srv:right-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <right-request>) ostream)
  "Serializes a message object of type '<right-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <right-request>) istream)
  "Deserializes a message object of type '<right-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<right-request>)))
  "Returns string type for a service object of type '<right-request>"
  "peb_scar/rightRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'right-request)))
  "Returns string type for a service object of type 'right-request"
  "peb_scar/rightRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<right-request>)))
  "Returns md5sum for a message object of type '<right-request>"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'right-request)))
  "Returns md5sum for a message object of type 'right-request"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<right-request>)))
  "Returns full string definition for message of type '<right-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'right-request)))
  "Returns full string definition for message of type 'right-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <right-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <right-request>))
  "Converts a ROS message object to a list"
  (cl:list 'right-request
))
;//! \htmlinclude right-response.msg.html

(cl:defclass <right-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass right-response (<right-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <right-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'right-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name peb_scar-srv:<right-response> is deprecated: use peb_scar-srv:right-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <right-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader peb_scar-srv:success-val is deprecated.  Use peb_scar-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <right-response>) ostream)
  "Serializes a message object of type '<right-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <right-response>) istream)
  "Deserializes a message object of type '<right-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<right-response>)))
  "Returns string type for a service object of type '<right-response>"
  "peb_scar/rightResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'right-response)))
  "Returns string type for a service object of type 'right-response"
  "peb_scar/rightResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<right-response>)))
  "Returns md5sum for a message object of type '<right-response>"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'right-response)))
  "Returns md5sum for a message object of type 'right-response"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<right-response>)))
  "Returns full string definition for message of type '<right-response>"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'right-response)))
  "Returns full string definition for message of type 'right-response"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <right-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <right-response>))
  "Converts a ROS message object to a list"
  (cl:list 'right-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'right)))
  'right-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'right)))
  'right-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'right)))
  "Returns string type for a service object of type '<right>"
  "peb_scar/right")