;A function that makes it twice that each item of a list of numbers.

(define (twice l)
  (map (lambda (x) (* x 2)) l))

;A function that subtracts items of two lists

(define (minus-list l1 l2)
  (map - l1 l2))

;filtering out even numbers in a list



(define (even-filt l1)
  (keep-matching-items l1 even?))

;filtering out numbers (x) that are not 10 ≤ x ≤ 100.
(define (filter-10-100 l1)
  (keep-matching-items l1 (lambda (x) (<= 10 x 100))))