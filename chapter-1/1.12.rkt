#lang scheme

#|

公式
row!/(col! * (row - col)!)
|#

(define (factorial2 a b c)
  (if ( >  b c) a
      (factorial2 (* a b) (+ b 1) c)))

(define (iter-factorial n) (factorial2 1 2 n))

(define (pascal n m)
  (/ (iter-factorial n) (* (iter-factorial m) (iter-factorial (- n m)))))

(pascal 4 2)

(pascal 1024 256)