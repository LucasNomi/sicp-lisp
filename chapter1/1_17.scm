#lang sicp

(define (double x) (* x 2))
(define (halve x) (/ x 2))

(define (fast-mult x y)
  (cond ((= y 0) 0)
        ((= y 1) x)
        ((even? y)  (fast-mult (double x) (halve y)))
        (else (+ x (fast-mult x (- y 1))))))
