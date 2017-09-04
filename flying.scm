(define pi (* 4 (atan 1.0)))

;function to convert degrees to radians
(define toradian
  (lambda (degree)
    (* degree (/ pi 180))))

; convert velocity and time to distance
(define distance 
  (lambda (v t)
    (* v t)))

; time till hitting the ground
(define airtime
  (lambda (v)
    (/ (* 2 v) 9.8)))

; vertical velocity with velocity and angle
(define vx 
  (lambda (v theta1)
    (* v (cos theta1))))

; horizontal velocity with velocity and angle
(define vy
  (lambda (v theta1)
    (* v (sin theta1))))

; flying distance with velocity v and angle theta
(define flyingdistance
  (lambda (v theta)
    (distance (vx v (toradian theta)) (airtime (vy v (toradian theta))))))