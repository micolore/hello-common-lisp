;; 
(defun test-+()
  (format t "~:[FALL~;PASS~] ... ~a~%" (= (+ 1 2) 3) '(=(+ 1 2) 3))
  (format t "~:[FALL~;pass~] ... ~a~%" (= (+ 2 3) 6) '(= (+ 2 3) 6))
  (format t "~:[FALL~;pass~] ... ~a~%" (= (+ -1 -3) 4) '(= (+  -1 -3) -4)))

