# frozen_string_literal: true

module Gef
  module Core
    module ControllerHelpers
      module StrongParameters
        def permitted_attributes
          Gef::PermittedAttributes
        end

        delegate(*Gef::PermittedAttributes::ATTRIBUTES,
                 to: :permitted_attributes,
                 prefix: :permitted)
      end
    end
  end
end
