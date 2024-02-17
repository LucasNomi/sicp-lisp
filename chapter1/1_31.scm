#lang sicp

; product linear recursive
(define (product term a next b)
  (if (> a b)
      1
      (* (term a)
         (product term (next a) next b))))

; factorial
(define (identity x) x)
(define (inc x) (+ x 1))

(define (factorial n)
  (product identity 1 inc n))

; approximating pi

(define (pi-product n)
  (define (term x)
    (if (even? x)
        (/ (+ x 2.0)
           (- (+ x 2.0) 1.0))
        (/ (- (+ x 2.0) 1.0)
           (+ x 2.0))))
  (* 4 (product term 1.0 inc n)))