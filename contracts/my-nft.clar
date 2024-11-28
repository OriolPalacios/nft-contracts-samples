
;; title: my-nft
;; version:
;; summary:
;; description:

;; traits
;;
(impl-trait 'SP2PABAF9FTAJYNFZH93XENAJ8FVY99RRM50D2JG9.nft-trait.nft-trait)

;; token definitions
;;
;; define an nft whose name is my-first-nft and with an the type of its asset id
(define-non-fungible-token my-first-nft uint)

;; mint one instance of the class "my-first-nft", with asset id u1, and debit it to tx-sender wallet
(nft-mint? my-first-nft u1 tx-sender)

;; transfering the nft with asset id u1 to another wallet from the owner
(nft-transfer? my-first-nft u1 tx-sender 'ST1SJ3DTE5DN7X54YDH5D64R3BCB6A2AG2ZQ8YPD5)

;; get the owner of the nft of
(print (nft-get-owner? my-first-nft u1))

;; finally burn the token
(nft-burn? my-first-nft u1 'ST1SJ3DTE5DN7X54YDH5D64R3BCB6A2AG2ZQ8YPD5)


;; constants
;;

;; data vars
;;
;; data maps
;;

;; public functions
;;

;; read only functions
;;

;; private functions
;;

