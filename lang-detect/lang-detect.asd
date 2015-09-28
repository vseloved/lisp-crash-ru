(in-package :asdf-user)

(defsystem #:lang-detect
  :depends-on (#:should-test #:cxml #:rutils)
  :serial t
  :components ((:file "package")
               (:file "storage")
               (:file "stats")
               (:file "calc")
               (:file "test")))
