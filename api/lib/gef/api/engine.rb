# frozen_string_literal: true

require 'rails/engine'

module Gef
  module Api
    class Engine < ::Rails::Engine
      isolate_namespace Gef
      config.generators.api_only = true

      engine_name 'gef_api'
    end
  end
end