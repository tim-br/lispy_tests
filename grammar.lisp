(in-package #:cl-user)
(defpackage #:grammar
  (:use #:cl)
  (:export :sentence :one-of))
(in-package #:grammar)

(defun foo(x)
    ( * x x))

;; (defun sentence ()
;;   (append (noun-phrase) (verb-phrase)))

;; (defun noun-phrase ()
;;   (append (Article) (Noun)))

;; (defun verb-phrase ()
;;   (append (Verb) (noun-phrase)))

;; (defun Article ()
;;   (one-of '(the a)))

;; (defun Noun ()
;;   (one-of '(man ball woman table)))

;; (defun Verb ()
;;   (one-of '(hit took saw liked)))

;; (defun one-of (set)
;;   (list (random-elt set)))
