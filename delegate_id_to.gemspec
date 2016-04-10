# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'delegate_id_to/version'

Gem::Specification.new do |spec|
  spec.name          = 'delegate_id_to'
  spec.version       = DelegateIdTo::VERSION
  spec.authors       = ['shipiev']
  spec.email         = ['roman@shipiev.ru']
  spec.summary       = %q{Add delegate_to_id method to models}
  spec.description   = %q{It's delegating id for model methods}
  spec.homepage      = 'https://github.com/shipiev/delegate_id_to'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']
end
