(format t "list ok: ~a ~%" (list 'ok)) 
(format t "list ok (yes): ~a ~%" (list 'ok '(yes)))
(format t "list ok yes: ~a ~%~%" (list 'ok 'yes))

;;;cons create cons cells
(format t "cons zort n ~a ~%" (cons 'zort 'n)) ;;cons zort n (ZORT . N)
;;; o---> N
;;; |
;;; V
;;;ZORT

;;;list create a cons(es) CHAIN
(format t "cons zort n ~a ~%~%" (list 'zort 'n)) ;;cons zort n (ZORT N)
;;; o---> o ---> NIL
;;; |     |
;;; V     V
;;;ZORT   N

(format t "cons NIL NIL: ~a ~%" (cons nil nil))
(format t "list NIL NIL: ~a ~%" (list nil nil))
(format t "cons 1 2: ~a ~%" (cons 1 2))
(format t "list 1 2: ~a ~%" (list 1 2))


