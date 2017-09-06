(define fact
  (lambda (n)
    (if (= n 1)
      1
      (* n (fact (- n 1))))))

(define fact-tail
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

;A function that takes a list (ls) and and an object (x) and returns the first position of x in ls.
;The position is counted from 0. If x is not found in ls, the function returns #f.

(define (index l item c)
  (if (equal? (car l) item)
    c
    (if (equal? (cdr l) '())
      #f
      (index (cdr l) item (+ c 1)))))

;my-reverse that reverse the order of list items
(define (my-reverse l new)
  (if (equal? (cdr l) '())
    (cons (car l) new)
    (my-reverse (cdr l) (cons (car l) new))))

;Converting a string that represents a positive integer to the corresponding integer, 
;i.e. "1232" → 1232. Input error check is not required

; code goes here

; using named let A function that takes a list (ls) and an object (x)
; as arguments and returns a list removing x from ls.

(define (delete-let l item)
  (let loop((c l) (x item))
    (if (equal? (car c) x)
      (cdr c)
      (cons (car c) (loop (cdr c) x)))))

; using named let A function that takes a list (ls) and and an object (x) and returns the first position of x in ls.
;The position is counted from 0. If x is not found in ls, the function returns #f.

(define (index-let l item)
  (let loop((c l) (x item) (index 0))
    (if (equal? (car c) item)
      index
      (if (equal? (cdr c) '())
        #f
        (loop (cdr c) x (+ index 1))))))

;The function range that returns a list of numbers from 0 to n (not including n).

(define (range num)
  (let loop((limit num) (i 0) (l '()))
    (if (>= i limit)
      (reverse l)
      (loop limit (+ i 1) (cons i l)))))


