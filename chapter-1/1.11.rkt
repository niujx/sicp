#lang scheme
(define (f n)
  (if (< n 3)
      n
      (+ (f (- n 1))
         (* 2 (f (- n 2)))
         (* 3 (f(- n 3))))))


(f 4)


#|
推导过程
f(0) = 0
f(1) = 1
f(2) = 2
f(3) = f(2) + 2f(1) + 3f(0)
f(4) = f(3) + 2f(2) + 3f(1)
f(5) = f(4) + 2f(3) + 3f(2)
|#

(define (f-iter a b c n)
  (cond ((= n 0) c)
        ((= n 1) b)
        ((= n 2) a)
        (else (f-iter (+ a (* 2 b) (* 3 c))  a  b (- n 1)))))

(define (f2 n)(f-iter 2 1 0 n))


(f2 4)