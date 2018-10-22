#lang scheme

(define (factorial n)
    (if (= n 1) 
         1 
         (* n (factorial (- n 1)))))

(factorial 6)



(define (factorial_new  n product count)
  (if (> count n) 
    product 
    (factorial_new  n (* product  count ) (+ count 1)))
)


(factorial_new  6 1 1)

(current-milliseconds)