#lang sicp

(define (gdc x y)
  (if (= y 0)
      x
      (gdc y (remainder x y))))