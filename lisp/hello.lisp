(defun main ()
  (format t "Hello world."))

(sb-ext:save-lisp-and-die "hello"
:executable t
:toplevel 'main)
