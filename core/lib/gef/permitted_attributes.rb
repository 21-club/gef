# frozen_string_literal: true

module Gef
  # Gef::PermittedAttributes contains the attributes permitted through strong
  # params in various controllers in the frontend. Extensions and stores that
  # need additional params to be accepted can mutate these arrays to add them.
  module PermittedAttributes
    ATTRIBUTES = []

    mattr_reader(*ATTRIBUTES)    
  end
end
