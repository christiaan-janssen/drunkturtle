;;;; drunkturtle.asd

(asdf:defsystem #:drunkturtle
  :description "Describe drunkturtle here"
  :author "Christiaan Janssen <christiaan@drunkturtle.com>"
  :license  "Specify license here"
  :version "0.0.1"
  :serial t
  :build-operation "program-op" ;; leave as is
  :build-pathname "drunkturtle"
  :entry-point "drunkturtle:start-server"
  :depends-on (#:cl-who #:hunchentoot #:parenscript)
  :components ((:file "package")
	       (:file "views/default-page")
               (:file "drunkturtle")))
