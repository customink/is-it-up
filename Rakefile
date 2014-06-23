require "bundler/gem_tasks"
Bundler.require
require 'rake/testtask'

Rake::TestTask.new do |t|
  t.libs = ['lib','test']
  t.pattern = 'test/**/*_test.rb'
  t.verbose = true
end

task :default => :test
