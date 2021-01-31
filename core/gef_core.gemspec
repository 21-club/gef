require_relative 'lib/core/version'

Gem::Specification.new do |spec|
  spec.name          = "gef_core"
  spec.version       = Core::VERSION
  spec.authors       = ["Vito Mannina"]
  spec.email         = ["mannina.vito@gmail.com"]

  spec.summary       = %q{Write a short summary, because RubyGems requires one.}
  spec.description   = %q{Write a longer description or delete this line.}
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.5.0")
  spec.required_rubygems_version = '>= 1.8.23'

  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end

  %w[
    actionmailer actionpack actionview activejob activemodel activerecord
    activesupport railties
  ].each do |rails_dep|
    spec.add_dependency rails_dep, ['>= 5.2', '< 6.2.x']
  end
end
