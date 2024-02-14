#lang sicp

(define (square x) (* x x))

(define (divides? x y)
  (= (remainder y x) 0))

(define (find-divisor n test-divisor)
  (cond ((> (square test-divisor) n) n)
        ((divides? test-divisor n) test-divisor)
        (else (find-divisor n (+ test-divisor 1)))))

(define (smallest-divisor n) (find-divisor n 2))

(define (prime? n)
  (= n (smallest-divisor n)))

(define (timed-prime-test n)
  (newline)
  (display n)
  (start-prime-test n (runtime)))

(define (start-prime-test n start-time)
  (if (prime? n)
      (report-prime ( - (runtime) start-time))
      false))

(define (report-prime elapsed-time)
  (display " *** ")
  (display elapsed-time))

(define (next-odd x)
  (if (even? x)
      (+ x 1)
      (+ x 2)))

(define (search-for-primes start end quantity)
  (cond ((= quantity 0)
         (newline)
         (display "DONE"))
        ((> start end)
         (newline)
         (display "DONE"))
        ((timed-prime-test start) (search-for-primes (next-odd start) end (- quantity 1)))
        (else (search-for-primes (next-odd start) end quantity))))