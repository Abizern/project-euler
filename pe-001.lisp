(load "utilities/integers.lisp")

(defpackage :pe-001
  (:use :cl)
  (:import-from :pe-utils-integers :sum-of-integers)
  (:documentation "Multiples of 3 or 5"))

(in-package #:pe-001)

(defun sum-multiples-to (m cap)
  "Sum the multiples of M that are less than CAP"
  (let ((n (floor (1- cap) m)))
    (* m (sum-of-integers n))))

(defun solve () ;; => 233168
  (-
   (+ (sum-multiples-to 3 1000)
      (sum-multiples-to 5 1000))
   (sum-multiples-to 15 1000)))

;; (time (solve))

;; Evaluation took:
;;   0.000 seconds of real time
;;   0.000004 seconds of total run time (0.000003 user, 0.000001 system)
;;   100.00% CPU
;;   5,660 processor cycles
;;   0 bytes consed