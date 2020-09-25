(define-macro for
  (lambda (iterator start end . body)
    `(let loop ((,iterator ,start))
      (if (<= ,iterator ,end)
      (loop (+ ,iterator 1) (begin ,@body))))))

(for x 1 10000000000000000000000000000
  (print "a"))
