# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'request_breakpoint/version'

Gem::Specification.new do |spec|
  spec.name          = 'request_breakpoint'
  spec.version       = RequestBreakpoint::VERSION
  spec.authors       = ['David Groulx']
  spec.email         = ['david@sandbendersoftware.com']
  spec.description   = %q{Inject a breakpoint into the Rack middleware stack}
  spec.summary       = %q{Inject a breakpoint into the Rack middleware stack}
  spec.homepage      = ''
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake'

  spec.add_dependency 'debugger'
end
