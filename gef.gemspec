require_relative 'lib/gef/version'

Gem::Specification.new do |spec|
  spec.name          = "gef"
  spec.version       = Gef.version
  spec.authors       = ["21Club"]
  spec.email         = ["info@21club.it"]

  spec.summary       = %q{Write a short summary, because RubyGems requires one.}
  spec.description   = %q{Write a longer description or delete this line.}
  spec.homepage      = "https://github.com/21-club/gef"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.5.0")
  spec.required_rubygems_version = '>= 1.8.23'

  spec.metadata["allowed_push_host"] = "Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/21-club/gef"
  spec.metadata["changelog_uri"] = "https://github.com/21-club/gef/CHANGELOG.md"

  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  
  spec.files = Dir['README.md', 'lib/**/*']

  spec.add_dependency 'gef_core', spec.version
end
