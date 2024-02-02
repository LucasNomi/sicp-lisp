#lang sicp

(define (f n)
  (if (< n 3)
      n
      (f-iter 2 2 0 (- n 2))))

(define (f-iter a b c count)
  (if (= count 0)
      a
      (f-iter (+ a b c) (* 2 a) (* 3 (/ b 2)) (- count 1))))
