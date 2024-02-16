#lang sicp

(define (square x) (* x x))

(define (expmod base exp m)
  (cond ((= exp 0) 1)
        ((even? exp)
         (remainder
          (square (expmod base (/ exp 2) m))
          m))
        (else
         (remainder
          (* base (expmod base (- exp 1) m))
          m))))

(define (next x)
  (if (= x 2)
      3
      (+ x 2)))

(define (divides? x y)
  (= (remainder y x) 0))

(define (find-divisor n test-divisor)
  (cond ((> (square test-divisor) n) n)
        ((divides? test-divisor n) test-divisor)
        (else (find-divisor n (next test-divisor)))))

(define (smallest-divisor n) (find-divisor n 2))

(define (prime? n)
  (= n (smallest-divisor n)))

(define (test n a)
  (cond ((= a 0) true)
        ((= (expmod a n n) a) (test n (- a 1)))
        (else false)))

(define (charmichael-test n)
  (define (really-charmichael?)
    (if (prime? n)
        false
        true))
  (define (test a)
    (cond ((= a 0) (really-charmichael?))
          ((= (expmod a n n) a) (test (- a 1)))
          (else false)))
  (test (- n 1)))