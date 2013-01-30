# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fizzbuzz/version'

Gem::Specification.new do |gem|
  gem.name          = "fizzbuzz"
  gem.version       = Fizzbuzz::VERSION
  gem.authors       = ["TODO: David Bechtel"]
  gem.email         = ["TODO: davidbechtel@sbcglobal.net"]
  gem.description   = %q{TODO: Fizzbuzz program}
  gem.summary       = %q{TODO: outputs fizz, buzz or fizzbuzz if numbers modulo 3, 5 or 15 respectively}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
