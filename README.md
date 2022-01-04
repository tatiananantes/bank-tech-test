# Bank tech test
Week 10 - Makers Academy week challenge

### Specifications

* You should be able to interact with your code via a REPL like IRB or the JavaScript console.  
* Deposits, withdrawal.
* Account statement (date, amount, balance) printing.
* Data can be kept in memory (it doesn't need to be stored to a database or anything).

### Acceptance criteria

**Given** a client makes a deposit of 1000 on 10-01-2023  
**And** a deposit of 2000 on 13-01-2023  
**And** a withdrawal of 500 on 14-01-2023  
**When** she prints her bank statement  
**Then** she would see

```
date || credit || debit || balance
14/01/2023 || || 500.00 || 2500.00
13/01/2023 || 2000.00 || || 3000.00
10/01/2023 || 1000.00 || || 1000.00
```

#### User Stories

```
As a customer
I want to be able to own a bank account
So that I can keep and access my money

As a customer
I want to be able to deposit money into my account
So that I can access it later

As a customer
I want to be able to withdraw money from my account
So that I can use it to buy things

As a customer
I want to see my bank account balance 
So that I know how much money I have

As a customer 
I want to be able to see the dates of my banking operations 
So that I can keep track of transactions
```

Progress:
- set up local and github repo
- Created user stories




