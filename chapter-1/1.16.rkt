#lang scheme
(define (fast-expt b n)(fast-expt-iter b n 1))

(define (fast-expt-iter b n a)
  (cond ((= n 0) a)
        ((even? n)(fast-expt-iter (sequare b) (/ n 2) a))
        (else (fast-expt-iter b (- n 1)(* a b)))
        ))

(define (even? n)(= (remainder n 2) 0))

(define (sequare x)(* x x))

(fast-expt 2 10)


