module Gef
  VERSION = '0.1.0'

  def self.version
    VERSION
  end

  def self.gem_version
    Gem::Version.new(gef_version)
  end
end
