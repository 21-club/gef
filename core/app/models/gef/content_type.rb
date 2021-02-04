# frozen_string_literal: true

module Gef
  class ContentType < Gef::Base
    #validations
    validates :name, uniqueness: { case_sensitive: false }, allow_blank: false

    #assosiations
    has_many :elements, through: :content_types_elements
    has_many :content_types_elements
    has_many :contents
  end
end


