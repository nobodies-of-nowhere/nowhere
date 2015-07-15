Nowhere
=======

(will probably be) Deployed on heroku
  * Master - http://goingnowhere.herokuapp.com
  * Dev - http://goingnowhere-dev.herokuapp.com

## Setup

This setup presumes OSX, because I'm too lazy to type Linux stuff. Kinda silly,
as I'm typing this on Linux.

```sh
# Get the project directory
cd ~/wherever/you/keep/your/projects/
git clone https://github.com/JenBerry/nowhere
cd nowhere

# Install ruby version manager
brew update
brew install rbenv ruby-build
echo 'eval "$(rbenv init -)"' >> ~/.bash_profile

# Restart shell to make rbenv avalible
bash

# Install ruby 
rbenv install $(cat .ruby-version)

# Install ruby deps
gem install bundler
bundle install --no-document

# Setup the databases
#   You've got a postgres server running, right?
bundle exec rake db:create
bundle exec rake db:migrate

# Run the server
bundle exec rails server
open http://localhost:3000/
```

## Notes

* [Email validator](https://github.com/balexand/email_validator)
