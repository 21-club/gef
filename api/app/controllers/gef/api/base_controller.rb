module Gef
  module Api
    class BaseController < ActionController::API
      self.responder = Gef::Api::Responders::AppResponder
      respond_to :json
      protect_from_forgery unless: -> { request.format.json? }

      include Gef::Core::ControllerHelpers::StrongParameters

      rescue_from ActionController::ParameterMissing, with: :parameter_missing_error
      rescue_from ActiveRecord::RecordNotFound, with: :not_found
    end
  end
end
