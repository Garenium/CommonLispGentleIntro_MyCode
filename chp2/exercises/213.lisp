(format t "FUN (((FUN))(IN THE)(SUN)): ~a ~%" (caaar '(((FUN))(IN THE)(SUN)) ) )
(format t "IN (((FUN))(IN THE)(SUN)): ~a ~%" (caadr '(((FUN))(IN THE)(SUN)) ) )
(format t "THE (((FUN))(IN THE)(SUN)): ~a ~%" (cadadr '(((FUN))(IN THE)(SUN)) ) )
(format t "SUN (((FUN))(IN THE)(SUN)): ~a ~%" (caaddr '( ((FUN))(IN THE)(SUN)) ) )

; (format t "SUN (((FUN))(IN THE)(SUN)): ~a ~%" (cddr '( ((FUN))(IN THE)(SUN) ) ) )
; (format t "SUN (((FUN))(IN THE)(SUN)): ~a ~%" (cdadr '( ((FUN))(IN THE)(SUN) ) ) ) ;;(THE)
; (format t "FUN (((FUN))(IN THE)(SUN)): ~a ~%" (cdr '(in the) )) ;;(THE)
; (format t "FUN (((FUN))(IN THE)(SUN)): ~a ~%" (cadr '(in the) )) ;;THE
; (format t "FUN ((E F)) ~a ~%" (cdr '((E F)) ) )
