#lang scheme

(define (sqrt-iter guess x)
    (if (good-enough? guess (impove guess x))
          (impove guess x)
          (sqrt-iter (impove guess x)
                     x)))

(define (impove guess x)
    (average guess (/ x guess)))

(define (average x y)
   (/ (+ (/ x (square y)) (* 2 y)) 3) 
  )
(define (good-enough? old-guess new-guess)
    (> 0.00001
       (/ (abs (- new-guess old-guess))
          old-guess)))

(define (square x)(* x x))

(define (sqrt x)
  (sqrt-iter 1.0 x))

(sqrt 8)
