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

;A function that counts the number of list items, my-length.
(define (my-length l c)
  (if (equal? (cdr l) '())
    (+ c 1)
    (my-length (cdr l) (+ c 1))))

; A function that summarizes numbers in a list
(define (sum-list l c)
  (if (equal? (cdr l) '())
    (+ (car l) c)
    (sum-list (cdr l) (+ (car l) c))))

;A function that takes a list (ls) and an object (x) as arguments and returns a list removing x from ls
(define (delete item l)
  (if (equal? (car l) item)
    (cdr l)
    (cons (car l) (delete item (cdr l)))))