lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "ruboty/hipchat/version"

Gem::Specification.new do |spec|
  spec.name          = "ruboty-hipchat"
  spec.version       = Ruboty::Hipchat::VERSION
  spec.authors       = ["Ryo Nakamura"]
  spec.email         = ["r7kamura@gmail.com"]
  spec.summary       = "Hipchat adapter for Ruboty"
  spec.homepage      = "https://github.com/r7kamura/ruboty-hipchat"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "ruboty", ">= 0.2.0"
  spec.add_dependency "xrc", ">= 0.0.5"
  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
