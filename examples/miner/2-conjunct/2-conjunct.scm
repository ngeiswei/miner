;; Load the miner module
(use-modules (opencog)
             (opencog miner))

;; (use-modules (opencog logger))
;; (cog-logger-set-level! (cog-ure-logger) "debug")
;; (cog-logger-set-level! "debug")

;; Setup the KB
(define AB
(Inheritance
  (Concept "A")
  (Concept "B")))
(define BC
(Inheritance
  (Concept "B")
  (Concept "C")))
(define DE
(Inheritance
  (Concept "D")
  (Concept "E")))
(define EF
(Inheritance
  (Concept "E")
  (Concept "F")))

;; Call the pattern miner with a minimum support of 2, starting with
;; an initial pattern with 2 conjuncts.
;;
;; Expect to learn, among others, the following pattern
;;
;; (Lambda
;;   (VariableList
;;     (Variable "$X")
;;     (Variable "$Y")
;;     (Variable "$Z"))
;;   (Present
;;     (Inheritance
;;       (Variable "$X")
;;       (Variable "$Y"))
;;     (Inheritance
;;       (Variable "$Y")
;;       (Variable "$Z"))))
;;
;; (with different variable names, introduced variables, like
;; `(Variable "$PM-2bc0bb0b")` are autogenerated by the pattern
;; miner).
;;
;; Starting from pattern (conjunct-pattern 2), that is
;;
;; (Lambda
;;   (VariableList
;;     (Variable "$X-0")
;;     (Variable "$X-1"))
;;   (Present
;;     (Variable "$X-0")
;;     (Variable "$X-1"))))
;;
(define results (cog-mine (list AB BC DE EF)
                          #:minimum-support 2
                          #:initial-pattern (conjunct-pattern 2)
                          #:conjunction-expansion #f
                          #:maximum-variables 4
                          #:maximum-spcial-conjuncts 2
                          #:surprisingness 'none))
