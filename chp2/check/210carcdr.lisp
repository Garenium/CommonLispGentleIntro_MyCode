(setq *print-case* :downcase)


(format t "car (the big bopper) ~a ~%" (car '(the big bopper)))
(format t "cdr (the big bopper) ~a ~%~%" (cdr '(the big bopper)))

(format t "first (the big bopper) ~a ~%" (first '(the big bopper)))
(format t "rest (the big bopper) ~a ~%~%" (rest '(the big bopper)))

;;;rest is stylistically preferable over cdr
;;;when the argument is "subjectively" viewed
;;;as a list rather than as a cons
