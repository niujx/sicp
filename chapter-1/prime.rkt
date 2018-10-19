#lang scheme

(define (prime? n)
    (= n (prime?-iter n 2)))

(define (prime?-iter n test)
    (cond ((> test n) n)
          ((check n (sequare test )) test )
          (else (prime?-iter n (+ test 1))))
)

(define (check n test)(= (remainder test n ) 0))

(define (sequare x)(* x x))

(prime? 4)

(prime? 5)