# IsItUp Changelog

## 2.0.0
- Removed support for Ruby 2.2, 2.3, 2.4 and 2.6, and for Rails 3.2, 4.0, 4.1, 4.2 and 5.0
- Added Ruby 3.2, 3.3, 3.4 and 4.0 to the test matrix, along with Rails 7.1, 7.2, 8.0 and 8.1
- Moved the CI images from Ubuntu focal to noble
- Pinned `concurrent-ruby` below 1.3.5 for the Rails 6.x and 7.0.0 appraisals
- Updated `.ruby-version` to 3.1

## 1.1.1
- Fixed the gemspec

## 1.1.0
- Added support for testing against all known Ruby and Rails versions

## 1.0.0
- Added Appraisal for proper testing against various Rails versions
- Updated documentation
- Enforced direct loading of `::Railtie`

## 0.0.5
- Fix the autoloading for `Railtie`

## 0.0.4
- Added `.ruby-version` file with a recent version of Ruby
- Added `Brewfile` with the GNU coreutils dependency
- Added `bin/bootstrap_macos` to help macOS users get bootstrapped for development
- Updated README with additional instructions for getting started

## 0.0.3
- Added `bin/console` for local testing
- Added `bin/setup` for easier installation
- Decoupled the gemspec from bundler and git
- Applied Rubygem standards
- Removed minitest deprecation warnings
- Used `autoload` for configuring the gem
