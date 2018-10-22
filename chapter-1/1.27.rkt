#lang scheme

(define (even? n)(= (remainder n 2) 0))

(define (square x) (* x x))

#|
 一个数a的b的次方对另外一个数b取摸 如果等于b 则b很有可能是素数
|#
(define (expmod base exp m)
   (cond ((= exp 0) 1)
         ((even? exp) 
            (remainder (square (expmod base (/ exp 2) m)) m))
         (else (remainder (* base (expmod base (- exp 1) m)) m))))


(define (carmichael n)
    (test-iter 1 n))

(define (test-iter a n)
    (cond ((= a n)
            #t)
          ((try-it a n)
            (test-iter (+ a 1) n))
          (else
            #f)))

(define (try-it a n)
    (= (expmod a n n) a))

(carmichael 561)
