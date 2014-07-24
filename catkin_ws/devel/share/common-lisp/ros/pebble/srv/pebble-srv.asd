
(cl:in-package :asdf)

(defsystem "pebble-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "getMenu" :depends-on ("_package_getMenu"))
    (:file "_package_getMenu" :depends-on ("_package"))
    (:file "callMenu" :depends-on ("_package_callMenu"))
    (:file "_package_callMenu" :depends-on ("_package"))
  ))