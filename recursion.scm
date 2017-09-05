(define fact
  (lambda (n)
    (if (= n 1)
      1
      (* n (fact (- n 1))))))

(define facttail
  (lambda (n c)
    (if (= n 1)
      c
      (facttail (- n 1) (* c n)))))