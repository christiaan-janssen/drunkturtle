(in-package #:cl-user)

(defvar *acceptor* nil)

(defun initialize-application (&key port)
  (setf hunchentoot:*dispatch-table*     
	`(hunchentoot:dispatch-easy-handlers
	 ,(hunchentoot:create-folder-dispatcher-and-handler
	   "/assets/" "/app/assets/")))
  (when *acceptor* (hunchentoot:stop *acceptor*))
  (setf *acceptor* (hunchentoot:start (make-instance 'hunchentoot:easy-acceptor :port port))))
