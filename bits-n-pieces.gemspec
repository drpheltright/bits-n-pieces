lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bits/version'

Gem::Specification.new do |spec|
  spec.name          = 'bits-n-pieces'
  spec.version       = Bits::VERSION
  spec.authors       = ['Luke Morton']
  spec.email         = ['lukemorton.dev@gmail.com']

  spec.summary       = %q{A frontend stack for pieces gem}
  spec.homepage      = 'https://github.com/drpheltright/bits-n-pieces'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.require_paths = ['lib']

  spec.add_dependency 'babel-transpiler'
  spec.add_dependency 'bourbon'
  spec.add_dependency 'neat'
  spec.add_dependency 'sass'
  spec.add_dependency 'uglifier'
  spec.add_development_dependency 'pry-byebug'
end
