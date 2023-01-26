#lang racket

(require abe/dia
         relation
         "labor.rkt"
         "capital.rkt"
         "ideas.rkt")

(define attributions (make-hash))

(define N 3)

(reconcile-appraisals N
                      labor-attributions
                      capital-attributions
                      antecedents-attributions
                      attributions)

(sort #:key cdr > (hash->list attributions))

(validate-attributions attributions)
