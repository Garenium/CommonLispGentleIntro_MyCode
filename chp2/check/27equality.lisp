(format t "Are (A (B C) D) and (A B (C D)) equal? ~a ~%" 
        (equal '(a (b c) d) '(a b (c d)))
)

(format t "Are (A (B C) D) and (A (B C) D) equal? ~a ~%" 
        (equal '(A (B C) D) '(A (B C) D)  )
)

