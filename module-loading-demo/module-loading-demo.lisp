;;;; module-loading-demo.lisp

(in-package #:module-loading-demo)

(defun list-modules ()
  (let ((modules-directory (merge-pathnames
                            "modules/"
                            (ql:where-is-system '#:module-loading-demo))))
    (remove-if-not (lambda (f)
                     (equalp (pathname-type f)
                             "lisp"))
                   (fad:list-directory modules-directory))))

(defun load-modules ()
  (dolist (module (list-modules))
    (compile-file module)
    (load module)))
