(ql:quickload "lisp-unit")

(defpackage #:grammar-test
  (:use #:cl #:lisp-unit))

#-xlisp-test (load "grammar")

(in-package #:grammar-test)

(define-test foo-1
  (assert-equal 25 (grammar:foo 5)))


#-xlisp-test
(let ((*print-errors* t)
      (*print-failures* t))
  (run-tests :all :grammar-test))
