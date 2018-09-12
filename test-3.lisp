
(defun report-result(result form)
  (format t "~:[FALL~;PASS~] ... ~a~%" result  form))

(defun  test-+()
  (report-result (= (+ 1 2) 3) '(= (+ 1 2 ) 3))
  (report-result (= (+ 2 3 1) 6) '(= (+ 1 2 3) 6))
  (report-result (= (+ -1 -2 ) -4) '(= (+ -1 -3) 4)))
