# Balance Ledger Smart Contract

A simple Clarity smart contract for the Stacks blockchain that implements a basic balance tracking system.

## Features

- Track user balances using principal-based mapping
- Deposit points to user accounts
- Query any user's balance
- Safe arithmetic operations with overflow protection

## Functions

### `deposit`
```clarity
(define-public (deposit (amount uint)))
```
Allows users to deposit points into their account.
- Parameters:
  - `amount`: Number of points to deposit
- Returns: `(ok uint)` with the deposited amount

### `get-balance`
```clarity
(define-read-only (get-balance (who principal)))
```
Query the balance of any user.
- Parameters:
  - `who`: Principal address to check
- Returns: `(ok uint)` with the current balance

## Development

### Prerequisites
- Stacks blockchain environment
- Clarinet for testing and deployment

### Installation
1. Clone the repository
2. Install dependencies
```bash
npm install
```

### Testing
Run the test suite:
```bash
clarinet test
```
