#lang sicp

(define (sum term a next b)
  (if (> a b)
      0
      (+ (term a)
         (sum term (next a) next b))))

; we can approximate the definite integral of a function using the following procedure, for small values of dx.
(define (definite-integral f a b dx)
  (define (add-dx x)
    (+ x dx))
  (* (sum f (+ a (/ dx 2)) add-dx b)
     dx))