#lang scheme

(define (count-change amount)
     (cc amount 5))

(define (cc amount type)
    (cond ((= amount 0) 1)
          ((or (< amount 0) (= type 0)) 0)
          (else (+ (cc amount (- type 1)) 
                   (cc (- amount (kind-of-coins type)) 
                    type)))))

(define (kind-of-coins type)
     (cond ((= type 1) 1)
           ((= type 2) 5)
           ((= type 3) 10)
           ((= type 4) 25)
           ((= type 5) 50)))

(count-change 6)


   