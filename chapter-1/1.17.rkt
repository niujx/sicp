#lang scheme


(define (double n)
   (+ n n))

(define (halve n)
    (/ n 2))

(define (even? n)(= (remainder n 2) 0))


(define (fast-expt-iter num count)
    (cond ((= count 0) 0)
          ((even? count) (double (fast-expt-iter num  (halve count))))
         (else (+ num (fast-expt-iter num ( - count 1))))
    ))

(fast-expt-iter 2 10)
