LISP ?= sbcl

build:
	$(LISP) --load drunkturtle.asd \
	--eval '(ql:quickload :drunkturtle)' \
	--eval '(asdf:make :drunkturtle)' \
	--eval '(quit)'
