(defpackage :module-loading-demo.foo
  (:use :cl)
  (:export :hello-world))

(in-package :module-loading-demo.foo)

(defun hello-world ()
  (format t "Hello, world"))
