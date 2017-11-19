#|
  This file is a part of newbie-essentials project.
  Copyright (c) 2017 Masataro Asai (guicho2.71828@gmail.com)
|#

(in-package :cl-user)
(defpackage :newbie-essentials.test
  (:use :cl
        :newbie-essentials
        :fiveam
        :trivia :alexandria :iterate))
(in-package :newbie-essentials.test)



(def-suite :newbie-essentials)
(in-suite :newbie-essentials)

;; run test with (run! test-name) 

(test newbie-essentials

  )



