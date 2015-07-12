(ql:quickload "lisp-unit")

(defpackage #:grammar-test
  (:use #:cl #:lisp-unit))

#-xlisp-test (load "grammar")

(in-package #:grammar-test)

(define-test square-1
  (assert-equal 25 (grammar:square 5)))

;; (define-test square-1
;;   (assert-equal 1 (grammar:square 1)))

;; (define-test square-2
;;   (assert-equal 2 (grammar:square 2)))

;; (define-test square-3
;;   (assert-equal 4 (grammar:square 3)))

;; (define-test square-4
;;   (assert-equal 8 (grammar:square 4)))

;; (define-test square-16
;;   (assert-equal 32768 (grammar:square 16)))

;; (define-test square-32
;;   (assert-equal 2147483648 (grammar:square 32)))

;; (define-test square-64
;;   (assert-equal 9223372036854775808 (grammar:square 64)))

;; (define-test total-grammar
;;   (assert-equal 18446744073709551615  (grammar:total)))

#-xlisp-test
(let ((*print-errors* t)
      (*print-failures* t))
  (run-tests :all :grammar-test))
