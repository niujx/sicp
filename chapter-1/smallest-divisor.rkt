#lang scheme

(define (smallest-divisor n) (find-divisor n 2))

(define (find-divisor n test-divisor)
  (cond ((> (sequare test-divisor) n) n)
        ((divides? test-divisor n) test-divisor)
        (else (find-divisor n (+ test-divisor 1)))))

(define (divides? a b )
 (= (remainder b a) 0))

(define (prime? n)
   (= n (smallest-divisor n)))

(define (sequare n )(* n n))


(prime? 1)


(define (expmod base exp m)
     (cond ((= exp 0) 1)
     ((even? exp) (remainder (sequare (expmod base (/ exp 2) m))
     m))
     (else 
        (remainder (* base (expmod base (- exp 1) m)) m))))