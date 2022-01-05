:moneybag: Bank tech test
=============
Makers Academy Week 10 Challenge - Solo Week
----------------------------

### Requirements

* Interact with your code via a REPL like IRB 
* Can do deposits and withdrawals
* Account statement (date, amount, balance) printing
* Data to ke kept in memory (no DB)

### User Stories

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
I want to be able to see the details of my banking operations 
So that I can keep track of transactions
```
#### Acceptance criteria

**Given** a customer makes a deposit of 1000 on 10-01-2023  
**And** a deposit of 2000 on 13-01-2023  
**And** a withdrawal of 500 on 14-01-2023  
**When** it prints their bank statement  
**Then** it would see

```
date || credit || debit || balance
14/01/2023 || || 500.00 || 2500.00
13/01/2023 || 2000.00 || || 3000.00
10/01/2023 || 1000.00 || || 1000.00
```

### What does the program do?
It allows a customer to open an account with a balance of zero. 
It then enables a customer to do transactions such as deposits and withdrawals keeping track of the account balance
A statement of all transactions in reverse order can be printed
It covers edge cases such as :
 - only positive numbers allowed
 - no deposit/withdraw of zero
 - no overdraft

### Approach
- Break Requirements & AC into User Stories
- TDD using RGR cycle: 100% coverage. 
- Commit often with clear messages
- Followed Single Responsibility Principle and it has 3 classes: Account, Statement, Transaction. 
- Account Class - handles deposit and withdraw methods, stores balance and transactions log. 
- Transaction Class - handles single transaction with date, credit, debit and account balance. 
- Statement Class - handles the printing of the statement with newest at the top. 


### Technologies used
- Ruby
- RSpec
- SimpleCov
- Rubocop
- Visual Studio

### How to run the app
- Clone this repo git clonehttps://github.com/tatiananantes/bank-tech-test.git
- cd bank-tech-test
- Run bundle install
- Run irb in your terminal
- Run require './lib/account.rb'
- See screenshot below on how to use the different functionality

![IRB](https://user-images.githubusercontent.com/10349072/148261964-c04b01c7-ea9d-4632-834f-425923f4088c.png)

![RSpec](https://user-images.githubusercontent.com/10349072/148264374-824b7d15-69a8-4524-87b0-5bed090fe729.png)
<img width="1414" alt="Screenshot 2022-01-05 at 18 26 06" src="https://user-images.githubusercontent.com/10349072/148290707-5598fc74-5039-45ba-a6a5-36dc5da62039.png">


