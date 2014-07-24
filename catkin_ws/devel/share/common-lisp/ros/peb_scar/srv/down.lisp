; Auto-generated. Do not edit!


(cl:in-package peb_scar-srv)


;//! \htmlinclude down-request.msg.html

(cl:defclass <down-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass down-request (<down-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <down-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'down-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name peb_scar-srv:<down-request> is deprecated: use peb_scar-srv:down-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <down-request>) ostream)
  "Serializes a message object of type '<down-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <down-request>) istream)
  "Deserializes a message object of type '<down-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<down-request>)))
  "Returns string type for a service object of type '<down-request>"
  "peb_scar/downRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'down-request)))
  "Returns string type for a service object of type 'down-request"
  "peb_scar/downRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<down-request>)))
  "Returns md5sum for a message object of type '<down-request>"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'down-request)))
  "Returns md5sum for a message object of type 'down-request"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<down-request>)))
  "Returns full string definition for message of type '<down-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'down-request)))
  "Returns full string definition for message of type 'down-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <down-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <down-request>))
  "Converts a ROS message object to a list"
  (cl:list 'down-request
))
;//! \htmlinclude down-response.msg.html

(cl:defclass <down-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass down-response (<down-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <down-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'down-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name peb_scar-srv:<down-response> is deprecated: use peb_scar-srv:down-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <down-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader peb_scar-srv:success-val is deprecated.  Use peb_scar-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <down-response>) ostream)
  "Serializes a message object of type '<down-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <down-response>) istream)
  "Deserializes a message object of type '<down-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<down-response>)))
  "Returns string type for a service object of type '<down-response>"
  "peb_scar/downResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'down-response)))
  "Returns string type for a service object of type 'down-response"
  "peb_scar/downResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<down-response>)))
  "Returns md5sum for a message object of type '<down-response>"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'down-response)))
  "Returns md5sum for a message object of type 'down-response"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<down-response>)))
  "Returns full string definition for message of type '<down-response>"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'down-response)))
  "Returns full string definition for message of type 'down-response"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <down-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <down-response>))
  "Converts a ROS message object to a list"
  (cl:list 'down-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'down)))
  'down-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'down)))
  'down-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'down)))
  "Returns string type for a service object of type '<down>"
  "peb_scar/down")