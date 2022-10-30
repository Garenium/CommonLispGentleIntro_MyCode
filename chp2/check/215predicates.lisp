
; listp: checks if input is a list
(format t "LISTP ~%'(1 2): ~a ~%" (listp '(1 2)))
(format t "1: ~a ~%" (listp 1))
(format t "'1: ~a ~%" (listp '1))
(format t "NIL: ~a ~% ~%" (listp NIL))

; consp checks if input is a cons
(format t "CONSP ~%'(1 2): ~a ~%" (consp '(1 2)))
(format t "1: ~a ~%" (consp 1))
(format t "'1: '~a ~%" (consp '1))
(format t "NIL: ~a ~%~%" (consp NIL))

; atom checks if input is NEITHER cons nor list
(format t "FIRST (): ~a ~%" (first ()))
(format t "REST ():  ~a ~%~%" (rest ()))

;
(format t "atom 18 : ~a ~%" (atom 18))
(format t "atom () : ~a ~%~%" (atom ()))

;;;To test if list is empty
(format t "NULL b: ~a ~%" (NULL NIL))

