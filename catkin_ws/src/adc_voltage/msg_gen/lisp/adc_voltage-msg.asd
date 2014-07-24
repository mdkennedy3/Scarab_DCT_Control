
(cl:in-package :asdf)

(defsystem "adc_voltage-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "AdcVoltage" :depends-on ("_package_AdcVoltage"))
    (:file "_package_AdcVoltage" :depends-on ("_package"))
  ))