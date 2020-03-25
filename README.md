# Bank tech test

Banking customers have been looking to have a new program that clearly manages their deposits and withdrawals. The owner of the bank has therefore asked me to create a simple application that can track these transactions: deposits and withdrawals. The owner would also like to allow customers to, at any time, have their full bank statement printed out so that they can clearly see their transaction history.

## The Approach

During this tech test, I followed the Test-Driven Development process, this uses the `RED-GREEN-REFACTOR` code writing process is used. The test must be written before any code is written and a failure must be received from the testing library (RSpec in this case). Then the most basic and naive code is written to fufill the test so that it passes (GREEN) and then following this the code is refactored to increase conciseness. In this coding challenge I have aimed to 100 % test coverage so that all lines of code have been tested to maximise my confidence in the code.

## How to use

1. Fork and clone the repository
2. Navigate into the parent file that contains spec and lib folders
3. Run the command `bundle install` to install gems in the Gemfile.
4. To run the software in the Interactive Ruby Shell `irb -r './lib/bank_account.rb'`
5. Start by initializing a new bank account, with a name of your choosing such as `davids_account = BankAccount.new`
6. Enjoy using you new account!

You can use the following commands on your account:
```
Make a deposit:
  irb(main):001:0> davids_account.deposit(500)

Make a withdrawal:
  irb(main):002:0> davids_account.withdraw(20)

Print your statement:
  irb(main):003:0> davids_account.print_statement
```

## Process

### Class Structure

I have chosen to split this exercise into two classes: a BankAccount class handling depsoits and withdrawals, and a AccountSuammry class for storing transactions and printing a statement.

| Objects | Methods |
| ------------- | ------------- |
| BankAccount  | .deposit(amount)  |
|   | .withdraw(amount)  |
| AccountSummary  | .store_transaction(type, amount, total)  |
|  | .create_statement_line(type, amount, total, date) |
|  | .print_statement  |

### User Stories
```
As a customer,
I want to deposit my money,
So that I can store it in the bank

As a customer,
I want to withdraw my money,
So that I can access and spend my money easily

As a customer,
I want to be able to get a summary of my bank account,
So that I can check through all my transactions by date and work out when I became bankrupt.
```

## Specification

### Requirements

* You should be able to interact with your code via a REPL like IRB or the JavaScript console.  (You don't need to implement a command line interface that takes input from STDIN.)
* Deposits, withdrawal.
* Account statement (date, amount, balance) printing.
* Data can be kept in memory (it doesn't need to be stored to a database or anything).

### Acceptance criteria

**Given** a client makes a deposit of 1000 on 10-01-2012  
**And** a deposit of 2000 on 13-01-2012  
**And** a withdrawal of 500 on 14-01-2012  
**When** she prints her bank statement  
**Then** she would see

```
date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00
```
## Tests

To run the testing suit, run the command `rspec`

If you have installed the gems correctly using `bundle install`, you should be able to get a response telling you that

## Future improvements

Given more time and more requirements form the client, there are some things I would to improve:

* When using irb, hide information about the objects and classes inside the bank account to make user experience more pleasent.
* To remove the use attribute_reader in transaction history for AccountSummary so that it is not accessible from outside the class. This is not an issue as such but controlling scope is important for encapsualtion and improves code quality.
* Improve spacing of displayed statement so that statement is more visually appealing. This would be done by adding leading and lagging spaces around each item in the priont statement. this would require more logic and has not been requewsted by the client in the MVP, though.
* Add if statements to see if there is enough money inside the account to allow a withdrawal. This has not been required in the accpetance criteria but is clearly a very common edge case. 
