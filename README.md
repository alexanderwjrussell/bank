# Bank - Tech Test 2

### Installation

```
$ git clone https://github.com/alexanderwjrussell/bank
$ cd bank
$ bundle
$ irb or pry
```

### The Brief

#### Requirements

* You should be able to interact with the your code via IRB. (You don't need to implement a command line interface that takes input from STDIN.)
* Deposits, withdrawal.
* Account statement (date, amount, balance) printing.
* Data can be kept in memory (it doesn't need to be stored to a database or anything).

#### Acceptance criteria

Given a client makes a deposit of 1000 on 10-01-2012 And a deposit of 2000 on 13-01-2012 And a withdrawal of 500 on 14-01-2012 When she prints her bank statement Then she would see:

```
date       || credit || debit   || balance
14/01/2012 ||        || 500.00  || 2500.00
13/01/2012 || 2000.00||         || 3000.00
10/01/2012 || 1000.00||         || 1000.00
```

### irb Testing
```
$ require './lib/account.rb'
$ require './lib/statement.rb'
$ account = Account.new
$ statement = Statement.new
$ account.credit(10)
$ account.debit(5)
$ account.credit(100)
$ account.debit(1000)
$ account.transaction_history.history
$ statement.generate_header(account.transaction_history.history)
$ statement.generate_row(account.transaction_history.history)
$ statement.generate_table(account.transaction_history.history)
```

### Solution
- [x] <insert here>

### Future Advancements
- [ ] <insert here>
