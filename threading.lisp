(defpackage #:moe.yana.threading
  (:use #:cl)
  (:export #:=>))

(in-package #:moe.yana.threading)

(defmacro => (&rest forms)
  (reduce (lambda (xs x) `(,@x ,xs)) forms))
