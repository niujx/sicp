#lang scheme

#| 1 *2 *3 *4
  3! = 1 * 2 * 3
  n! = n-1 * n-2 * n
|#

(define (factorial n)
  (if (< n 2) n
      (* n (factorial (- n 1)))
                       ))

(factorial 6)


(define (factorial2 a b c)
  (if ( >  b c) a
      (factorial2 (* a b) (+ b 1) c)))

(define (iter-factorial n) (factorial2 1 2 n))


(iter-factorial 6)

