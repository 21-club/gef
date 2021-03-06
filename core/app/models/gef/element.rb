# frozen_string_literal: true

module Gef
  class Element < Gef::Base
    #validations
    validates :type, uniqueness: { case_sensitive: false }, allow_blank: false

    #assosiations
    has_many :content_types, through: :content_types_elements
    has_many :content_types_elements
  end
end