#lang sicp

(define (square x) (* x x))

(define (sum-square x y)
  (+ (square x)
     (square y)))

(define (sum-square-two-largest x y z)
  (cond ((and (< z x) (< z y)) (sum-square x y))
        ((and (< x z) (< x y)) (sum-square z y))
        ((and (< y x) (< y z)) (sum-square x z))
        (else 0)))

