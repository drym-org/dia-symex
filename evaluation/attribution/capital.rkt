#lang racket

(provide capital-attributions)

(require abe/dia)

(define capital-tree
  '(("symex" . 100)
    (("platform/core" . 30)
     (("emacs" . 100)))
    (("dev tools" . 5)
     (("melpazoid" . 100)))
    (("structural editing primitives" . 35)
     (("lisp" . 80)
      (("paredit" . 75))
      (("lispy" . 20))
      (("evil-cleverparens" . 2.5))
      (("evil-surround" . 2.5)))
     (("non-lisp" . 20)
      (("tsc" . 70))
      (("tree-sitter" . 30))))
    (("UI libraries" . 30)
     (("hydra" . 30))
     (("evil" . 70)))))

(validate-appraisal capital-tree)

(define capital-attributions (make-hash))

(tally capital-tree
       node-weight
       bump
       #:results capital-attributions)
