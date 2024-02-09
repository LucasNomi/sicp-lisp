#lang sicp

; O(log n) for calculating sine x
; sine x is aprox x, if x is a sufficiently small number.
; For this exemple th angle is considerated "sufficiently small" if its magnitude is not greater than 0,1

(define (cube x) (* x x x))
(define (p x) (- (* 3 x) (* 4 (cube x))))
(define (sine angle)
  (if (not (> (abs angle) 0.1))
      angle
      (p (sine (/ angle 3.0)))))