
(cl:in-package :asdf)

(defsystem "coop_towing-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "sensor" :depends-on ("_package_sensor"))
    (:file "_package_sensor" :depends-on ("_package"))
  ))