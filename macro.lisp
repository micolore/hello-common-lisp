(if (> 2 3) "yup" "nope" )  ; "nope"

(if (> 2 3) "yup") ;;"nil"

(if (> 2 1) "yup" "nope") ;; "yup"

(if (spam-p current-message)
    (progn
          (file-in-spam-folder current-message)
          (update-spam-database current-message)))
(when (spam-p current-message)
  (file-in-spam-folder current-message)
  (update-spam-database current-message))

;;unless 
(defmacro unless (condition &rest body)
  '(if (not,condition)(progn ,body)))

(if  a
     (do x )
     (if b
         (do y)
         (do x)))
;; cond
(cond
  (test-a form*)
  (test-n form*))

(cond (a (do x))
      (b (do y))
      (c (do z)))

;; and not  or
(not nil) ;; t
(not (= 1 1)) ;; nil
(and (= 1 2) (= 3 3)) ;;nil
(or  (= 1 2) (= 3 3));;t

(dolist (var list-form)
  body-form*)

(dolist (x '( 1 2 3))(print x))

(dolist (x '( 1 2 3))(print x)(if (evenp x )(return)))


(dotimes  (var  count-form)
  body-from*)

(dotimes (i 4)(print i))

(dotimes (x 20)
  (dotimes (y 20)
    (format t "~3d "(* (1+ x)(1+ y))))
  (format t "~%"))

(do (variable-definition*)(
      end-test-form result-form* )
 statement*)

(var init-form step-form)



(do  ((n 0 (1+ n))
      (cur 0 next)
      (next 1 (+ cur next)))
     ((= 10 n ) cur))
(do ()
    ((> (get-universal-time) *some-future-date* ))
    (format t "waiting~%")
    (sleep 60))

(loop
   body-from*)
(loop
   (when (> (get-universal-time) *some-suture-date*)
   (return))
   (format t "waiting ~%")
   (sleep 60))

(do ((nums nil)(i 1 (1+ i)))
    ((> i 10)(nreverse nums))
  (push i nums))

(loop for i from 1 to 10 collecting i)

(loop for x from 1 to 10 summing(expt x 2)) ;;385

(loop for x across "the quick brown fox jumps over the lazy dog"
   counting(find x "aeiou")) ;; 11

(loop for i below 10
     and a = 0 then b
     and b = 1 then (+ a b)
     finally return a))
