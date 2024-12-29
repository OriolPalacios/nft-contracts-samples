(define-constant ERR-LIST-FULL u100)

(define-data-var my-list (list 5 uint) (list u0 u0 u0 u0 u0))
(define-data-var my-list-last-index uint u0)

(define-public (add-item-list (new-item uint)) 
  (let 
    (
      (actual-list (var-get my-list))
      (last-index (var-get my-list-last-index))
      (full-list (< last-index u5))
    )
    (asserts! full-list (err ERR-LIST-FULL))
    (match 
      (replace-at? actual-list last-index new-item)
      new-list
      (begin (var-set my-list new-list) (print last-index))
      (print u101)
    )
    (var-set my-list-last-ind ex (+ last-index u1))
    (ok (var-get my-list))
  )
