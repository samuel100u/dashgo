
(cl:in-package :asdf)

(defsystem "dashgo_bringup-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "ultrasonic" :depends-on ("_package_ultrasonic"))
    (:file "_package_ultrasonic" :depends-on ("_package"))
  ))