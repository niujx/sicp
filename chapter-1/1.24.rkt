#lang scheme

(define (odd n)
   (cond ((= n 2) n)
         ((= (remainder n 2 ) 0)  (+ n 1))
         (else n)
    )
)
#| 费马检查|#

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
(define (prime-range-test n count)
       (cond ((= count 3) count)
             ((fast-prime? n 3) 
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


