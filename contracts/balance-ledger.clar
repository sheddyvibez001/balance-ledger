;; balance-ledger.clar
;; A very simple balance tracker for users

(define-map balances
  {user: principal}
  uint)

;; Deposit some points
(define-public (deposit (amount uint))
  (let (
        (current (default-to u0 (map-get? balances {user: tx-sender})))
       )
    (map-set balances {user: tx-sender} (+ current amount))
    (ok amount)))

;; Check someone's balance
(define-read-only (get-balance (who principal))
  (ok (default-to u0 (map-get? balances {user: who}))))
