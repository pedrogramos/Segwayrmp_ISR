
(cl:in-package :asdf)

(defsystem "testeturtle-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "talk" :depends-on ("_package_talk"))
    (:file "_package_talk" :depends-on ("_package"))
  ))