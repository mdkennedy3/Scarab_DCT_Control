
(cl:in-package :asdf)

(defsystem "peb_scar-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "down" :depends-on ("_package_down"))
    (:file "_package_down" :depends-on ("_package"))
    (:file "right" :depends-on ("_package_right"))
    (:file "_package_right" :depends-on ("_package"))
    (:file "left" :depends-on ("_package_left"))
    (:file "_package_left" :depends-on ("_package"))
    (:file "quit" :depends-on ("_package_quit"))
    (:file "_package_quit" :depends-on ("_package"))
    (:file "up" :depends-on ("_package_up"))
    (:file "_package_up" :depends-on ("_package"))
    (:file "clear" :depends-on ("_package_clear"))
    (:file "_package_clear" :depends-on ("_package"))
  ))