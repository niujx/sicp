#lang scheme

(define (prime? n)
    (= n (prime?-iter n 2)))

(define (prime?-iter n test)
    (cond ((> (sequare test) n) n)
          ((check  n test) test )
          (else (prime?-iter n (+ test 1))))
)

(define (check n test)(= (remainder n test) 0))

(define (sequare x)(* x x))

(prime? 4)

(prime? 5)

(prime?-iter 199 2)

(prime?-iter 1999 2)

(prime?-iter 19999 2)