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
if ::Gem::Version.new(RUBY_VERSION) < ::Gem::Version.new("2.3.0")
    appraise 'rails32' do
        gem 'rails', '~> 3.2.0'
        gem 'rack-cache', '~> 1.2.0'
    end

    appraise 'rails40' do
        gem 'rails', '~> 4.0.0'
    end

    appraise 'rails41' do
        gem 'rails', '~> 4.1.0'
    end

    appraise 'rails42' do
        gem 'rails', '~> 4.2.0'
    end
end

if ::Gem::Version.new(RUBY_VERSION) < ::Gem::Version.new("2.5.0")
    appraise 'rails50' do
        gem 'rails', '~> 5.0.0'
    end
end

if ::Gem::Version.new(RUBY_VERSION) < ::Gem::Version.new("2.6.0")
    appraise 'rails51' do
        gem 'rails', '~> 5.1.0'
    end
end

if ::Gem::Version.new(RUBY_VERSION) < ::Gem::Version.new("2.7.0")
    appraise 'rails52' do
        gem 'rails', '~> 5.2.0'
    end
end

if ::Gem::Version.new(RUBY_VERSION) > ::Gem::Version.new("2.5.0") && ::Gem::Version.new(RUBY_VERSION) < ::Gem::Version.new("3.0.0")
    appraise 'rails60' do
        gem 'rails', '~> 6.0.0'
    end

    appraise 'rails61' do
        gem 'rails', '~> 6.1.0'
    end
end

if ::Gem::Version.new(RUBY_VERSION) > ::Gem::Version.new("2.7.0") && ::Gem::Version.new(RUBY_VERSION) < ::Gem::Version.new("3.1.0")
    appraise 'rails7' do
      gem 'rails', '7.0.0'
    end
end

if ::Gem::Version.new(RUBY_VERSION) >= ::Gem::Version.new("3.1.0")
    appraise 'rails70' do
      gem 'rails', '~> 7.0.0'
    end
end
