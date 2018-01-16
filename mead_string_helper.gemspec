
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "mead_string_helper/version"

Gem::Specification.new do |spec|
  spec.name          = "mead_string_helper"
  spec.version       = MeadStringHelper::VERSION
  spec.authors       = ["FuChai Mead"]
  spec.email         = ["jessie.mf.wolff@gmail.com"]

  spec.summary       = "Learning about gems"
  spec.description   = "Learning how to publish a gem"
  spec.homepage      = "https://github.com/jfmead/mead_string_helper"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
end
