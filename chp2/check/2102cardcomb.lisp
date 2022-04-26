(setq *print-case* :downcase)

(format t "cadr (fee fie foe fum): ~a ~%" (cadr '(fee fie foe fum)))
(format t "caddr (fee fie foe fum): ~a ~%" (caddr '(fee fie foe fum)) )
(format t "cadddr (fee fie foe fum): ~a ~%~%" (cadddr '(fee fie foe fum)) )

(format t "cddr (fee fie foe fum): ~a ~%" (cddr '(fee fie foe fum)) )
(format t "cdddr (fee fie foe fum): ~a ~%~%" (cdddr '(fee fie foe fum)) )

; (format t "caar (fee fie foe fum) ~a ~%" (caar '(fee fie foe fum))) ;returns error
;;;caar expects a list inside a list, not a symbol inside a list

(format t "caar (fee fie foe fum) ~a ~%~%" (caar '((fee) fie foe fum)))

;;;tip:
;;;Read cadr functions from right to left. Then you'll know how it starts

(format t "cdar ((BLUE CUBE)(RED PYRAMID)) ~a ~%" (cdar '((blue cube)(red pyramid)))) ;;(cube)
(format t "cadar ((BLUE CUBE)(RED PYRAMID)) ~a ~%" (cadar '((blue cube)(red pyramid)))) ;;cube
