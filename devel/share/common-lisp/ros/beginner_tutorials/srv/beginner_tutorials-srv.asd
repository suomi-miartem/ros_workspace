
(cl:in-package :asdf)

(defsystem "beginner_tutorials-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Sum" :depends-on ("_package_Sum"))
    (:file "_package_Sum" :depends-on ("_package"))
  ))