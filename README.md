# simple-address-generator

simple-address-generator is a Rails 3 generator that creates a small scaffold class called address that contains all the inputs needed for global address storage system. It is also ready with geocoding and Google maps integration.

# Demo

    http://young-fire-9461.heroku.com/addresses

## Installation

Add this line to your application's Gemfile:

    gem 'simple-address-generator'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install simple-address-generator

## Usage

After adding to your Gemfile, you should run:

    run g simple_address_generator

Then you can access the following URL:

    http://localhost:3000/addresses

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
