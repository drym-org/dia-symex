#lang racket

(require abe/dia
         relation
         "labor.rkt"
         "capital.rkt"
         "ideas.rkt"
         qi
         relation)

(define attributions (make-hash))

(define N 3)

(reconcile-appraisals N
                      labor-attributions
                      capital-attributions
                      antecedents-attributions
                      attributions)

(sort #:key cdr > (hash->list (for/hash ([(k v) (in-hash attributions)])
                                (values k (~>> (v) (~r #:precision '(= 2)) ->number)))))

(validate-attributions attributions)
