## Team member 
    Chenzhi Yu - cy2583
    Liqin Zhang - lz2809
    Zikora Agbapu - zaa2124
    Sheng Gao - sg3967

## Instruction for Run and Testing

first, git clone this repository

### Development environment need:
```
Ruby: 2.6.6p146
Rails: 6.0.4.1
```

### Install Commands

#### before install
    cd groupSplit

#### Install dependencies
```
bundle install
bundle exec rake db:migrate
bundle exec rake db:test:prepare
bundle exec rackup --host 0.0.0.0
```

#### if get webpacker related error on the page, run the command
```
bundle exec rails webpacker:install
```

## Add new member:
    Since a transaction must involve at least one member, need to add at least one member to the group before adding any transaction

### Add new transactions:
    Remeber to select transaction type and put in money you paid upfront.
    If no member is selected for member involved, then it's considered that all member are involved in the payment.

### Test: To get cucumber and Rspec running 
```
rails g cucumber:install
rails g rspec:install
```

#### To run cucumber and Rspec test
```
rake cucumber
rake spec
```

#### see our coverage result: 
     in groupSplit/coverage/index.html
     
     
## Heroku link
https://stormy-savannah-87519.herokuapp.com/

(If the link show "There's nothing here, yet.", just try refresh the page)

## 
## GitHub repo
https://github.com/graveszhang/Group-Split/tree/main

