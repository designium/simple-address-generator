# -*- encoding: utf-8 -*-
require File.expand_path('../lib/simple-address-generator/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Chim Kan"]
  gem.email         = ["designium@gmail.com"]
  gem.description   = "simple-address-generator allows you to create a complete Address model with fields and two main plugins that geocode address into coordinates and a Google Maps view with custom makers. To use, just add this gem to your Gemfile and then in your Rails 3 application, run: rails g simple_address_generator. Then run rails s and see in your browser http://localhost:3000/addresses."
  gem.summary       = "simple-address-generator allows you to create a complete Address model integrated to Google Maps."
  gem.homepage      = ""
  gem.email         = 'designium+simple@gmail.com'

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "simple-address-generator"
  gem.require_paths = ["lib"]
  gem.version       = Simple::Address::Generator::VERSION

  gem.files         = Dir["{lib}/**/*", "[A-Z]*"]

  gem.post_install_message = "***************************************"
  gem.post_install_message = "Thanks for using simple-image-uploader "
  gem.post_install_message = "                                       "
  gem.post_install_message = "Any problem? Suggestion? Send an email:"
  gem.post_install_message = "  email: designium+simple@gmail.com    "
  gem.post_install_message = "***************************************"


end
