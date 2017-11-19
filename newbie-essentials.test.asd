#|
  This file is a part of newbie-essentials project.
  Copyright (c) 2017 Masataro Asai (guicho2.71828@gmail.com)
|#


(in-package :cl-user)
(defpackage newbie-essentials.test-asd
  (:use :cl :asdf))
(in-package :newbie-essentials.test-asd)


(defsystem newbie-essentials.test
  :author "Masataro Asai"
  :mailto "guicho2.71828@gmail.com"
  :description "Test system of newbie-essentials"
  :license "LLGPL"
  :depends-on (:newbie-essentials
               :fiveam)
  :components ((:module "t"
                :components
                ((:file "package"))))
  :perform (test-op :after (op c) (eval
 (read-from-string
  "(5am:run! :newbie-essentials)"))
))
