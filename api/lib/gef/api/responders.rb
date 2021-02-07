# frozen_string_literal: true

require 'gef/api/responders/rabl_template'

module Gef
  module Api
    module Responders
      class AppResponder < ActionController::Responder
        include RablTemplate
      end
    end
  end
end
