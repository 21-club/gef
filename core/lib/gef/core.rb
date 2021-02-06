# frozen_string_literal: true

require 'rails/all'

module Gef
  def self.config(&_block)
    yield(Gef::Config)
  end

  module Core
    class GatewayError < RuntimeError; end
  end
end

require 'gef/core/version'

require 'gef/migrations'
require 'gef/migration_helpers'
require 'gef/core/engine'
