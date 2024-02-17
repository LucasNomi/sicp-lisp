#lang sicp

; product linear iterative
(define (product-iter term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a) (* result (term a)))))
    (iter a 1))

; factorial
(define (identity x) x)
(define (inc x) (+ x 1))

(define (factorial n)
  (product-iter identity 1 inc n))

; approximating pi
(define (pi-product n)
  (define (term x)
    (if (even? x)
        (/ (+ x 2.0)
           (- (+ x 2.0) 1.0))
        (/ (- (+ x 2.0) 1.0)
           (+ x 2.0))))
  (* 4 (product-iter term 1.0 inc n)))