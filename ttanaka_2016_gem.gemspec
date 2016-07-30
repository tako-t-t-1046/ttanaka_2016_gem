# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ttanaka_2016_gem/version'

Gem::Specification.new do |spec|
  spec.name          = "ttanaka_2016_gem"
  spec.version       = Ttanaka2016Gem::VERSION
  spec.authors       = ["Takashi Tanaka", "Takeshi Moriai"]
  spec.email         = ["tako.t.t.1046@mail.com", "extend71@gmail.com"]

  spec.summary       = %q{Write a short summary, because Rubygems requires one.}
  spec.description   = %q{Write a longer description or delete this line.}

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
end
