#lang scheme
(define (bigger x y)(if (> x y) x y))
(define (smaller x y)(if (< x y) x y))
(define (bigger-num-sum x y z)
       (+ (bigger x y)(bigger (smaller x y) z)))

(bigger-num-sum 4 10 2)
