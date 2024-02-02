#lang sicp

(define (pascal-element n k)
  (cond ((< n k) (error "n should be greater than k"))
        ((= n k) 1)
        ((= k 0) 1)
        (else (+ (pascal-element (- n 1) k)
                 (pascal-element (- n 1) (- k 1))))))