# common lisp

* fist install common lisp and other toos
1. sbcl steel bank common lisp  
   http://www.sbcl.org/
2. emacs
3. slime  in emacs code lisp
   https://common-lisp.net/project/slime/doc/html/
  quick start:  emacs M-x slime
  xshell must set properties  alt as meta key ***
  evil spacemacs 有空研究一下这个

## 变量
### 定义
 defvar defparameter
 
 (defvar *count* 0 "count is the  boxes" )
 (defparameter *gap-tolerance* 0.01 "tolerance to the be allewed in widget gaps.")
 (defun increment-widget-count ()(incf *count*))
 (increment-widget-count)

# 动态变量

