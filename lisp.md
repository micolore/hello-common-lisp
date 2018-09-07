# 函数式语言
sicp  scheme emacs common lisp

# common lisp
## 变量
与其他语言一样,形参与实参都有,但是这牵扯到一个概念,引用透明性,也就是函数式编程的核心。

(defun foo(x y z)(+ x y z))
(foo 1 2 3 ) ;(6)

; common lisp 可以为函数的形参赋予新值,而这不会影响同函数的另一个调用所创建的绑定
; so 引用一个新的概念,函数内的赋值 let
; (let (variable*) body-form*)
(let ((x 10) (y 20)) z) ...)

(defun foo(x)
       (format t "parameter: ~a~%" x)
       (let ((x 2))
       (format t "outer let: ~a~%" x)
       (let ((x 3))
        (format t "inner let: ~a~%" x))
        (format t "outer let: ~a~%" x))
        (format t "parmeter: ~a~%" x))


(dotimes (x 10)(format t "~d " x))


(let* ((x 10)
      (y (+ x 10)))
   (list x y))

(let ((x 10))
  (let ((y (+ x 10 )))
  (list x y))) 

