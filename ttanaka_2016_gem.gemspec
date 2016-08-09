# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ttanaka_2016_gem/version'

Gem::Specification.new do |spec|
  spec.name          = "ttanaka_2016_gem"
  spec.version       = Ttanaka2016Gem::VERSION
  spec.authors       = ["Takashi Tanaka", "Takeshi Moriai"]
  spec.email         = ["tako.t.t.1046@mail.com", "extend71@gmail.com"]

  spec.summary       = %q{This gem is calculate GCD, LCM, Prime.}
  spec.description   = %q{This gem is calculate GCD, LCM, Prime. Please read Wiki Page.}

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest"
  spec.add_development_dependency "guard"
  spec.add_development_dependency "guard-minitest"
end
