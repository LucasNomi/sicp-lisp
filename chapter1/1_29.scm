#lang sicp

(define (sum term a next b)
  (if (> a b)
      0
      (+ (term a)
         (sum term (next a) next b))))

(define (cube x) (* x x x))

; the following procedure gives: 0.24998750000000042 (definite-integral cube 0 1 0.01)
(define (definite-integral f a b dx)
  (define (add-dx x)
    (+ x dx))
  (* (sum f (+ a (/ dx 2)) add-dx b)
     dx))

; the following procedure gives: 0.25000000000000044 (simpson-rule cube 0 1 100)
(define (simpson-rule f a b n)
  (define h (/ (- b a) n))
  (define (next-yk x) (+ x h h))
  (* (+ (f a)
        (* 2 (sum f a next-yk b))
        (* 4 (sum f (+ a h) next-yk b))
        (f b))
     (/ h 3)))