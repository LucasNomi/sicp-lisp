#lang sicp

(define (factorial n)
  (factorial-iter 1 1 n))

(define (factorial-iter a b count)
  (if (= count 0)
      a
      (factorial-iter (* a b) (+ b 1) (- count 1))))