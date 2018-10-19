#lang scheme

#|俄罗斯农民法
 1  第一列翻倍 第二列减半 
 2  第二列偶数舍去该列
 3  第一列相加为计算结果
 算法过程
 20  15 
 40  7  
 80  3  
 160 0  舍去
20 + 40 + 80 + 160 = 300
|#

(define (russia a b c)
   (cond ((= b 0) c)
         ((even? b) (russia ( * a 2) (div b) c))
         (else  (russia ( * a 2) (div b) (+ c a)))))

(define (even? n)(= (remainder n 2) 0))

(define (div n) 
    (if (even? n) (/ n 2) (/ (- n 1) 2)))


(russia 57 86 0)

