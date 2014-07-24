
(cl:in-package :asdf)

(defsystem "pebble-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "accel" :depends-on ("_package_accel"))
    (:file "_package_accel" :depends-on ("_package"))
    (:file "pebble" :depends-on ("_package_pebble"))
    (:file "_package_pebble" :depends-on ("_package"))
  ))