Bank Tech Test
==============

How to run
----------

1. `git clone https://github.com/stilley85/bank_tech_test.git`
2. `cd bank`
3. `gem install bundle`
4. `bundle`
5. `irb`

How to use
----------

`account = Account.new` - Creates a new account object.
`account.deposit(50)` - Deposits the passed amount.
`account.withdraw(20)` - Withdraws the passed amount.
`account.balance` - Shows the current balance.
`account.print_statement` - Prints a statement of all transactions.

Criteria
--------

Today, you'll practice doing a tech test.

For most tech tests, you'll essentially have unlimited time.  This practice session is about producing the best code you can when there is a minimal time pressure.

You'll get to practice your OO design and TDD skills.

You'll work alone, and you'll also review your own code so you can practice reflecting on and improving your own work.

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

My approach
-----------

I began by creating user stories (see below) using the given criteria. I diagrammed what the basic structure of my program would be and decided I would need 3 classes. An account class to keep track of transactions and handle user interaction, a transaction class to store the details of each transaction and a statement class to handle printing the list of transactions.

I approached the task using TDD,  writing a failing test, getting it to pass and refactoring, repeating until all features were implemented. I focused on having small classes which had single responsibilities, committing after each passing test, writing meaningful tests and not over complicating by implementing features which were not asked for.

If I were to continue with this project I would begin to add features beyond the given criteria, such as validations for ensuring the user passes a number (non-negative) to the deposit/withdraw methods or setting an overdraft limit the users balance could not got below. I would also like to tidy up the print statement output so that the columns lined up correctly.

User Stories
------------

```
As a user
So that I know how much money I have
I would like to have a bank account with a balance

As a user
So that I can save my money
I would like to be able to deposit money to my bank account

As a user
So that I use my money
I would like to be able to withdraw money from my bank account

As a user
So that I know where my money is going
I would like to be able to see a statement of my transactions

As a user
So that I know when I used my bank account
I would like to be able to see the date a transaction happened

```
