## Group-Split
Group Split is a ESaaS project developed for COMS4995-21Fall at Columbia University.

Development environment:
```
Ruby: 2.6.6p146
Rails: 6.0.4.1
```

### Commands
Install dependencies
```
bundle install
bundle exec rake db:migrate
```
Operating databases
```
rails db
.tables
```
Run Cucumber 
```
rake cucumber                          # Alias for cucumber:ok
rake cucumber:all                      # Run all features
rake cucumber:ok                       # Run features that should pass
rake cucumber:rerun                    # Record failing features and run only them if any exist
rake cucumber:wip                      # Run features that are being worked on
```
Run Rspec
```
bundle exec rspec spec/*
```

### Run on codio
```
bundle install --without production
bundle exec rake db:migrate
bundle exec rake db:test:prepare
bundle exec rackup --host 0.0.0.0
```


### if get webpacker related error on the page, run the command
```
bundle exec rails webpacker:install
```


### To get cucumber and Rspec running 
```
rails g cucumber:install
rails g rspec:install


```

### urls
- Group Views: `http://localhost:3000/groupviews/index`
- New transactions: `http://localhost:3000/transactions/new?`
