#lang sicp

(define tolerance 0.0001)

(define (fixed-point f first-guess)
  (define (close-enough? v1 v2)
    (< (abs (- v1 v2)) tolerance))
  (define (try guess)
    (let ((next (f guess)))
      (if (close-enough? guess next)
          next
          (try next))))
  (try first-guess))


; Using the search for fixed point to find the square root of a number
(define (average x y)
  (/ (+ x y) 2))

; We use average damping for the function not be stuck in a loop
(define (sqrt x)
  (fixed-point (lambda (y) (average y (/ x y)))
               1.0))