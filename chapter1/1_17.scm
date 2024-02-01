(define (square x) (* x x))

(define (average x y)
  (/ (+ x y) 2))

(define (guess-enough? old-guess guess)
  (< (abs (- guess old-guess)) 0.001))

(define (improve-guess guess x)
  (average guess (/ x guess)))

(define (sqrt-inter old-guess guess x)
  (if (guess-enough? old-guess guess)
    guess
    (sqrt-inter guess (improve-guess guess x) x)))

(define (sqrt x)
  (sqrt-inter 0 1.0 x))
