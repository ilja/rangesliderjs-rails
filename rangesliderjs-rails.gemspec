# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rangesliderjs/rails/version'

Gem::Specification.new do |spec|
  spec.name          = "rangesliderjs-rails"
  spec.version       = Rangesliderjs::Rails::VERSION
  spec.authors       = ["Ilja Krijger"]
  spec.email         = ["ilja@quittheprogram.org"]

  spec.summary       = %q{rangeslider.js packaged for the rails assets pipeline.}
  spec.description   = %q{Simple, small and fast JavaScript/jQuery polyfill for the HTML5 <input type="range"> slider element.}
  spec.homepage      = "https://github.com/ilja/rangesliderjs-rails"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"
end
