#lang scheme
(define (russia a b c)
   (cond ((= b 0) c)
         ((even? b) (russia ( * a 2) (div b) c))
         (else  (russia ( * a 2) (div b) (+ c a)))))

(define (even? n)(= (remainder n 2) 0))

(define (div n) 
    (if (even? n) (/ n 2) (/ (- n 1) 2)))


(russia 2 3 0)

