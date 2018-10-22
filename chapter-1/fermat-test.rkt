#lang scheme

#| 费马检查
|#

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


(define (fermat-test n)

   (define (try-it a)
      (= (expmod a n n) a))

(try-it (+ 1 (random (- n 1)))))


(define (fast-prime? n times)
  (cond ((= times 0) true)
        ((fermat-test n) (fast-prime? n (- times 1)))
        (else false))

)

(fast-prime? 19999 3)
