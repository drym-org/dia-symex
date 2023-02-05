#lang racket

(provide antecedents-attributions)

(require abe/dia)

(define antecedents
  (hash
   "custom syntax" '("emacs")
   "cursor-oriented semantics" '("gremlin" "vim" "evil")
   "structural motions" '("emacs" "gremlin" "vim" "evil" "paredit" "lispy" "tree-sitter")
   "structural transformations" '("emacs" "gremlin" "vim" "evil" "paredit" "lispy" "tree-sitter")
   "structural computations" '("gremlin")
   "structure-respecting edits" '("emacs" "paredit" "lispy" "drracket" "parinfer")
   "linguistic interface" '("vim" "evil")
   "menu-driven interface" '("hydra")
   "point-free design" '("apl")
   "elisp runtime" '("emacs")
   "racket runtime" '("racket mode")
   "scheme runtime" '("scheme mode")
   "clojure runtime" '("cider")
   "common lisp runtime" '("slime" "sly")
   "arc runtime" '("arc mode")))

(define ideas-tree
  '(("symex" . 100)
    (("structural editing language (DSL)" . 50)
     (("custom syntax" . 15))
     (("cursor-oriented semantics" . 60))
     (("primitives" . 25)
      (("structural motions" . 30))
      (("structural transformations" . 30))
      (("structural computations" . 10))
      (("structure-respecting edits" . 30))))
    (("modal interface" . 35)
     (("linguistic interface" . 25))
     (("menu-driven interface" . 15))
     (("point-free design" . 60)))
    (("language-specific runtime" . 15)
     (("elisp runtime" . 17))
     (("racket runtime" . 17))
     (("scheme runtime" . 16))
     (("clojure runtime" . 17))
     (("common lisp runtime" . 17))
     (("arc runtime" . 16)))))

(validate-appraisal ideas-tree)

(define-values (ideas-attributions
                antecedents-attributions)
  (values (make-hash)
          (make-hash)))

(tally ideas-tree
       node-weight
       bump
       #:results ideas-attributions)

(validate-attributions ideas-attributions)

(attribute-antecedents ideas-attributions antecedents antecedents-attributions)
(validate-attributions antecedents-attributions)
