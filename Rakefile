require File.expand_path('../config/application', __FILE__)
Rails.application.load_tasks

# Rubocop style enforcing
require 'rubocop/rake_task'
RuboCop::RakeTask.new

task default: [:spec, :rubocop]
