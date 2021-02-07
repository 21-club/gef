require_relative "../core/lib/gef/core/version"

Gem::Specification.new do |spec|
  spec.name        = "gef_api"
  spec.version     = Gef.version
  spec.authors     = ["21Club"]
  spec.email       = ["info@21club.it"]
  spec.homepage    = "https://github.com/21-club/gef"
  spec.summary     = "API for the Gef framework."
  spec.description = spec.summary
  spec.license     = "MIT"

  spec.files        = `git ls-files`.split("\n")
  spec.require_path = 'lib'

  spec.add_dependency "rails", "~> 6.1.1"
  gem.add_dependency 'responders'
  gem.add_dependency 'gef_core', gem.version
end
