(setq *print-case* :downcase)

(format t "What is first? (a b c d): ~a ~%" (first '(a b c d)))
(format t "What is second? (a b c d): ~a ~%" (second '(a b c d)))
(format t "What is third? (a b c d): ~a ~%" (third '(a b c d)))
(format t "What is fourth? (a b c d): ~a ~%" (fourth '(a b c d)))
(format t "What is fifth? (a b c d): ~a ~%" (fifth '(a b c d)))
(format t "What is sixth? (a b c d): ~a ~%" (sixth '(a b c d)))
(format t "What is seventh? (a b c d): ~a ~%" (seventh '(a b c d)))
;;;...
(format t "What is teneth? (a b c d): ~a ~%" (tenth '(a b c d)))
(format t "What is eleventh? (a b c d): ~a ~%" (eleventh '(a b c d)))


;;;rest is a compliment of first
(format t "Rest (a b c d): ~a ~%" (rest '(a b c d)))

(format t "(rest '(rest  :   (a b c d): ~a ~%~%" (rest '(rest (a b c d)))) ;;;((a b c d)) ??

(format t "(rest '(first '(  :  (a b c d): ~a ~%" (rest '(first '(a b c d))))
(format t "(rest '(first  :  (a b c d): ~a ~%~%" (rest '(first (a b c d))))

(format t "(first '(rest  :  (a b c d): ~a ~%" (first '(rest '(a b c d))))
