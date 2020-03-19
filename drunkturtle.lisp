;;;; drunkturtle.lisp
(in-package #:drunkturtle)

(defvar *acceptor* nil)
(defvar *project-root* (asdf:system-source-directory :drunkturtle))


(defmacro standard-page ((&key title) &body body)
  `(with-html-output-to-string
       (*standard-output* nil :prologue t :indent t)
     (:html :lang "en"
	    (:head
	     (:meta :charset "utf-8")
	     (:title ,title)
	     (:link :type "text/css"
		    :rel "stylesheet"
		    :href "/main.css"))
	    (:body
	     (:div :id "header"
		   (:h1 "Drunkturtle"))
	     ,@body))))


(define-easy-handler (home :uri "/home") ()
    (standard-page (:title "drunkturtle.com")
      (:h1 "lala")
      (:p "Under construction!")))


(defun start-server ()
  (start (setf *acceptor*
	       (make-instance
		'easy-acceptor :port 8080
			       :document-root
			       (merge-pathnames "static/" *project-root*)))))
