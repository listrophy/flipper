# -*- encoding: utf-8 -*-
require File.expand_path('../lib/flipper/version', __FILE__)

flipper_dalli_files = lambda { |file|
  file =~ /dalli/
}

Gem::Specification.new do |gem|
  gem.authors       = ["John Nunemaker"]
  gem.email         = ["nunemaker@gmail.com"]
  gem.summary       = "Dalli adapter for Flipper"
  gem.description   = "Dalli adapter for Flipper"
  gem.license       = "MIT"
  gem.homepage      = "https://github.com/jnunemaker/flipper"

  gem.files         = `git ls-files`.split("\n").select(&flipper_dalli_files) + ["lib/flipper/version.rb"]
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n").select(&flipper_dalli_files)
  gem.name          = "flipper-dalli"
  gem.require_paths = ["lib"]
  gem.version       = Flipper::VERSION

  gem.add_dependency 'flipper', "~> #{Flipper::VERSION}"
  gem.add_dependency 'dalli', '>= 2.0', '< 3'
end