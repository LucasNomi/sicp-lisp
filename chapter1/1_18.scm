#lang sicp

(define (double x) (* x 2))
(define (halve x) (/ x 2))

(define (fast-mult x y)
  (fast-mult-iter 0 x y))

(define (fast-mult-iter z x y)
  (cond ((= y 0) z)
        ((even? y) (fast-mult-iter z (double x) (halve y)))
        (else (fast-mult-iter (+ z x) x (- y 1)))))