#lang sicp

(define (square x) (* x x))

(define (guess-enough? guess old-guess)
  (< (abs (- guess old-guess)) 0.001))

(define (improve-guess guess x)
  (/ (+ (/ x (square guess)) (* 2 guess))
     3))

(define (cbrt-iter old-guess guess x)
  (if (guess-enough? guess old-guess)
      guess
      (cbrt-iter guess (improve-guess guess x) x)))

(define (cbrt x)
  (cbrt-iter 0 1.0 x))
