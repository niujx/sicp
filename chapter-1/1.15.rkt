#lang scheme

(define (cube x)(* x x x))

(define (p x)
  (display "run !")  
  (newline)
  (- (* 3 x) (* 4 (cube x))))

(define (sine angle)
  (if (not (> (abs angle) 0.1))
      angle
      (p (sine (/ angle 1.0)))))



 (sine 10) 