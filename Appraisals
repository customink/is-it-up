# This is the appraisal file that determines which specific gems should be
# tested in various situations. Because Appraisal was originally developed
# for the Travis CI system, a few minor tweaks are added to this file,
# to ensure we can actually run this properly on CircleCI.
#
# The core change is that we perform a Ruby version check in this file to
# exclude certain configurations from specific Ruby machines to simulate
# the configuration we had in Travis CI where we excluded a specific Gemfile from
# a build. That feature does not exist in CircleCI, so to ensure that the
# "bundle exec appraisal install" command works,
# we exclude certain appraisals when the Ruby version doesn't match.
appraise 'rails5.0' do
  gem 'rails', '~> 5.0.0'
end

appraise 'rails5.1' do
  gem 'rails', '~> 5.1.0'
end

appraise 'rails5.2' do
  gem 'rails', '~> 5.2.0'
end

appraise 'rails6.0' do
  gem 'rails', '~> 6.0.0'
end

appraise 'rails6.1' do
  gem 'rails', '~> 6.1.0'
end
