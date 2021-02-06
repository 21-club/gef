# frozen_string_literal: true

module Gef
  module Core
    class Environment

      attr_accessor :preferences

      def initialize(gef_config)
        @preferences = gef_config
      end
    end
  end
end
