#lang racket

(require abe/dia
         relation
         "labor.rkt"
         "capital.rkt"
         "ideas.rkt")

(define attributions (make-hash))

(incorporate-appraisal labor-attributions .69 attributions)
(incorporate-appraisal capital-attributions .23 attributions)
(incorporate-appraisal antecedents-attributions .08 attributions)

(sort #:key cdr > (hash->list attributions))

(validate-attributions attributions)
