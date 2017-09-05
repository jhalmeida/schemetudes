;A function to return the absolute value of a real number.

(define abs 
  (lambda (num)
    (if (> num 0)
      num
      (* -1 num))))

; return reciprocal of real number

(define reciprocal
  (lambda (num)
    (if (not (= num 0))
      (/ 1 num)
      (#f))))

; return char representaion of integer

(define tochar
  (lambda (int)
    (if (> int 32)
      (if (< int 127)
        (integer->char int)
        #f)
      #f)))

; function returns product of three numbers if they are all positive

(define posprod
  (lambda (a b c)
    (if (and (> a 0) (> b 0) (> c 0))
      (* a b c)
      #f)))

; function returns product of three numbers if one is negative

(define negprod
  (lambda (a b c)
    (if (or (< a 0) (< b 0) (< c 0))
      (* a b c)
      #f)))

; The grade (A – D) of exam is determined by the score (score). Write a function that takes a score as an argument and returns a grade.
;A if score ≥ 80
;B if 60 ≤ score ≤ 79
;C if 40 ≤ score ≤ 59
;D if score < 40

(define grade
  (lambda (score)
    (cond 
      ((>= score 80) "A")
      ((<= 60 score 79) "B")
      ((<= 40 score 59) "C")
      ((< score 40) "D"))))
