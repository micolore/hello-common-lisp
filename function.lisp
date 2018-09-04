;; 函数 变量 宏
(defun name (parameter*)
  "Optional  documentation string."
  body-form*)

(defun hello-world() (format t "hello world"))
;; 后面的format是一个表达式

(defun verbose-sum(x y)
  "sum any two numbers after printing a message."
  (format t "summing ~d and ~d.~%" x y)
  (+ x y))
;; 参数必须根据形参传递
;; 函数调用实参映射到函数形参

;; 可选形参
;; 适用于一些较为分散并且不能确定调用者是否会提供值的形参
(defun foo (a b &optional c d ) (list a b c d))

(foo  1 2) ;;-> ( 1 2 NIL NIL)
(foo  1 2 3)
(foo  1 2 3 4)

;; 第二个形参使用默认值10
(defun foo (a &optional (b 10)) (list a b))
(foo 1 2) ;;(1 2)
(foo 1 ) ;;(1 10)

(defun foo( a b &optional (c  3 c-supplied-p))
                  list( a b c c-supplied-p))
(foo 1 2)   ;;(1 2 3 NIL)
(foo 1 2 3) ;;(1 2 3 T)
(foo 1 2 4) ;;(1 2 4 T)  

;; 剩余形参

(format  t "hello, world")
(format  t "hello, ~a" name)
(format  t "x: ~d y: ~d" x y)
(+)
(+ 1)
(+ 1 2)
(+ 1 2 3)

(defun format (stream string &rest values) ...)
(defun + (&rest numbers)...)

;; 关键字形参
;; 允许调用者指定具体的形参相应所使用的值

(defun foo (&key a b c)  (list a b c))

(foo) ;; (NIL NIL NIL)
(foo  :a 1) ;;(1 NIL NIL)
(foo  :b 1) ;;(NIL 1 NIL)
(foo  :c 1) ;;(NIL NIL 1)
(foo  :a 1 :b 2) ;;(1 2 NIL)
(foo  :a 1 :b 2 :c 3) ;;(1 2 3)
(foo  :a 1 :c 3 :b 2);;(1 2 3)

;; 如同可选形参那样，关键字形参也提供一个默认值形式以及supplied-p

(defun  foo (&key (a 0) (b 0 b-supplied-p) (c (+ a b)))
  (list a  b c b-supplied-p))
(foo :a 1) ;; (1 0 1 NIL)
(foo :b 2) ;; (0 1 1 T)
(foo :b 1 :c 4) ;;(0 1 4 T)
(foo :a 2 :b 1 :c 4 ;;(2 1 4 T)   

(defun foo(&key ((:apple a)) ((:box b)) ((:charlie c) 0 c-supplied-p))
  (list :apple 10 :box 20 :charlie  30) ;; (10  20 30 T)
  
;; 参数顺序 必要形参、可选形参、剩余形参、关键字形参
;; 尽量避免 &optional 与&key一起使用


  (defun  foo  (x &optional y &key z) (list x y z))
  (foo 1 2 :z 3) ;;(1 2 3)
  (foo 1 ) ;;(1 nil nil)
  (foo 1 :z 3) ;; error


  ;; 作为数据的高阶函数
  (defun foo(x) (* x 2))
  (function foo)
  ;;通过函数对象调用函数
  ;; FUNCALL APPLY

  (foo 1 2 3) = (funcall #'foo 1 2 3)

  (defun plot (fn min max step)
    (loop for i from min to max  by step do
         (loop repeat (funall fn i) do (format t "*"))
         (format t "~")))
  ;; apply 第二个参数可以是一个列表或者单独的实参
