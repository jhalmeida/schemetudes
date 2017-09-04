(define hello 
  (lambda (name)
    (string-append "Hello " name "!")))

(define (hellos name)
  (string-append "hello " name "!"))

(define sum3
  (lambda (a b c)
    (+ a b c)))

(define add1
  (lambda (arg)
    (+ arg 1)))

(define minus1
  (lambda (arg)
    (- arg 1)))