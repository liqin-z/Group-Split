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

### Add new transactions:
    All input are required, no input are optional.
    So if want to create new trasaction, make sure you fill in all the fields and make selections.

### Test: To get cucumber and Rspec running 
```
rails g cucumber:install
rails g rspec:install
```

#### see our coverage result: 
     in groupSplit/coverage/index.html
     
     
## Heroku link
https://stormy-savannah-87519.herokuapp.com/

(If the link show "There's nothing here, yet.", just try refresh the page)

## 
## GitHub repo
https://github.com/graveszhang/Group-Split/tree/main

