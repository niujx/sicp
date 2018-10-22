#lang scheme

(define (odd n)
   (cond ((= n 2) n)
         ((= (remainder n 2 ) 0)  (+ n 1))
         (else n)
    )
)

(define (divies a b) 
    (= (remainder a b) 0))

(define (square n) (* n n))

(define (prime-test n test) 
     (cond ((> (square test) n) n)
           ((divies n test) test)
           (else (prime-test n (+ test 1))))
)

(define (prime? n)
    (= n (prime-test n 2))
)

(define (prime-range-test n count)
       (cond ((= count 3) count)
             ((prime? n) 
                (display n)
                (newline)
                (prime-range-test (odd (+ n 1)) (+ count 1)))
             (else (prime-range-test (odd (+ n 1)) count))))

(define (prime-range n)
    (prime-range-time n (current-inexact-milliseconds)))

(define (prime-range-time n times)
    (prime-range-test n 0)
    (display " **** ")
    (newline)
    (display (- (current-inexact-milliseconds) times))
    (newline)
)

(prime-range 1000)
(prime-range 10000)
(prime-range 100000)
(prime-range 1000000)


