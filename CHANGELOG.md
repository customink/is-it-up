# IsItUp Changelog

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
