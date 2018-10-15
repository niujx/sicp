#lang scheme

(define (sqart x)
   (define (good-enough? guess) 
      (< (abs (- (square guess) x ))  0.001))

   (define (impove guess )
      (average guess (/ x guess)))

   (define (sqrt-iter guess)
    (if (good-enough? guess )
          guess
          (sqrt-iter (impove guess))))

  (define (square )(* x x))

  (define (average y) 
     (/ (+ x y) 2))

  (sqrt-iter 1.0))

(sqrt 9)