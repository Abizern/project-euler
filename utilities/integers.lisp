(defpackage :pe-utils-integers
  (:use :cl)
  (:export :sum-of-integers)
  (:documentation "Utilities for Integers"))

(in-package #:pe-utils-integers)

(defun sum-of-integers (n)
  "Sum of the first N natural numbers"
  (/ (* n (+ 1 n)) 2))
