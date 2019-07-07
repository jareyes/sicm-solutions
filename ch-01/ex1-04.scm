; Exercise 1.4: Lagrangian action
; https://groups.csail.mit.edu/mac/users/gjs/6946/sicm-html/book-Z-H-10.html#%_thm_1.4

 (define ((L-free-particle mass) local)
   (let ((v (velocity local)))
     (* 1/2 mass (dot-product v v))))

 ; Interpolate between xa = x(ta) and xb = x(tb).
 (define (straight-line-path t)
   (up (+ (* (/ (- t 'ta) (- 'tb 'ta)) (- 'xb 'xa)) 'xa)))

; Apply the action.
(Lagrangian-action (L-free-particle 'm) straight-line-path 'ta 'tb)
