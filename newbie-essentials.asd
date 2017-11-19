
(in-package :cl-user)
(defpackage newbie-essentials-asd
  (:use :cl :asdf))
(in-package :newbie-essentials-asd)


(defsystem newbie-essentials
  :version "0.1"
  :author "Masataro Asai"
  :mailto "guicho2.71828@gmail.com"
  :license "LLGPL"
  :defsystem-depends-on (:trivial-package-manager)
  :depends-on (:trivia :alexandria :iterate)
  :pathname "src"
  :components ((:file "package"))
  :description "Install the essential programs for lisp newbies"
  :in-order-to ((test-op (test-op :newbie-essentials.test)))
  ;; :defsystem-depends-on (:trivial-package-manager)
  ;; :perform
  #+(or)
  (load-op :before (op c)
           (uiop:symbol-call :trivial-package-manager
                             :ensure-program
                             "minisat"
                             :apt "minisat"
                             :dnf "minisat2"
                             :yum "minisat2"
                             :packman ""
                             :yaourt ""
                             :brew "minisat"
                             :choco ""
                             :from-source (format nil "make -C ~a"
                                                  (asdf:system-source-directory :newbie-essentials)))
           (uiop:symbol-call :trivial-package-manager
                             :ensure-library
                             "libfixposix"
                             :apt "libfixposix0"
                             :dnf ""
                             :yum ""
                             :packman ""
                             :yaourt ""
                             :brew "libfixposix"
                             :choco ""
                             :from-source (format nil "make -C ~a"
                                                  (asdf:system-source-directory :newbie-essentials)))))
