
; Copyright (c) 2015 Microsoft Corporation


(declare-fun a () Int)
(declare-fun a () Int)
(declare-fun b () Int)
(declare-fun + () Int)
(set-option :print-success true)
(define-fun + ((a Int) (b Int)) Int (* a b))
(define-fun plus ((a Int) (b Int)) Int (+ a b))
(display (plus 10 20))
(display (plus 10 (plus 20 30)))
(set-option :pp.flat-assoc false)
(display (plus 10 (plus 20 30)))
(display (>= (! (+ 1 2) :named sum) (- sum 1)))
(declare-fun f (Int) Int)
(set-option :pp.max-depth 1000)
(display (let ((x 10))
           (let ((y 20))
             (forall ((x Int))
                     (=> (> (f x) (+ x y))
                         (exists ((y Int))
                                 (and (> (f x) (f y))
                                      (forall ((z Int))
                                              (= (f z) (f (+ x y)))))))))))
