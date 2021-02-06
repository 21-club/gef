require_relative "lib/gef/core/version"

Gem::Specification.new do |spec|
  spec.name        = "gef_core"
  spec.version     = Gef.version
  spec.authors     = ["21Club"]
  spec.email       = ["info@21club.it"]
  spec.summary     = 'Essential models, and classes for the Gef project.'
  spec.description = spec.summary
  spec.license     = "MIT"

  spec.homepage      = "https://github.com/21-club/gef"

  spec.files        = `git ls-files`.split("\n")
  spec.require_path = 'lib'

  spec.add_dependency "rails", "~> 6.1.1"
end
