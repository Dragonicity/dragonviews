
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "dragonviews/version"

Gem::Specification.new do |spec|
  spec.name          = "dragonviews"
  spec.version       = Dragonviews::VERSION
  spec.authors       = ["Mark Nelson"]
  spec.email         = ["mark.nelson@dragonicity.com"]

  spec.summary       = %q{A short summary of the gem.}
  spec.description   = %q{A longer description of the gem.}
  spec.homepage      = "https://www.dragonicity.com"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
end
