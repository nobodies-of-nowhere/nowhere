Nowhere
=======

(will probably be) Deployed on heroku
  * Master - http://goingnowhere.herokuapp.com
  * Dev - http://goingnowhere-dev.herokuapp.com

[Log to STDIO](https://github.com/heroku/rails_stdout_logging)


## Spring

This app uses Spring, which is a tool that makes Rails applications load
faster, but it might prevent backend code from reloading correctly.

If you think your application is running old code, run `spring stop`. And if
you'd rather not use spring, add `DISABLE_SPRING=1` to your login file.


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


## Test it

```sh
bundle exec rake test
bundle exec rubocop
```


## Analyse it

```sh
bundle exec sandi_meter
bundle exec flay .
```


## Notes

* [Email validator](https://github.com/balexand/email_validator)
* [Rack Canonical Host](https://github.com/tylerhunt/rack-canonical-host)
* [High Voltage Static pages](https://github.com/thoughtbot/high_voltage)
* [Bullet query profiler](https://github.com/flyerhzm/bullet)
