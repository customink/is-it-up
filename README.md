# Is It Up?

A Ruby gem that adds a simple endpoint to see if your application "is
up".  The endpoint is handled via Rack middleware.  A Railtie is provided
for integration with Ruby on Rails apps.

## Installation

Add this line to your application's Gemfile:

    gem 'is_it_up'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install is_it_up

## Usage

IsItUp provides one monitoring URI that returns a JSON response:

```ruby
% curl your-domain/is_it_up
{ "status": "ok", "code": 200 }
```

## Contributing

1. Fork it ( http://github.com/customink/is_it_up/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## Kudos

Various ideas borrowed from:

* [is_it_up](https://github.com/andhapp/is_it_up), a similar rack middleware.
* [fitter_happer](https://github.com/atmos/fitter_happier), a similar Rails plugin.

