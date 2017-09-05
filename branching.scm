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