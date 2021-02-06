require_dependency 'gef/core/controller_helpers/strong_parameters'

module Gef
  class BaseController < ApplicationController
    include Gef::Core::ControllerHelpers::StrongParameters

    respond_to :html
  end
end
