hcr: build.lisp hcr.lisp hcr-cli.lisp hcr.asd hcr-cli.asd
	which ecl || { echo "Please install ECL to build hcr."; exit 1; }
#[ ! -e quicklisp.lisp ] && wget https://beta.quicklisp.org/quicklisp.lisp
#sbcl --load quicklisp.lisp --eval '(quicklisp-quickstart:install :path "./quicklisp")'
	ecl -load build.lisp
	mv hcr-cli hcr

tests:
	ecl -load testsrun.cl

sbtests:
	sbcl --load testsrun.cl


