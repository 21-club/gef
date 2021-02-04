# frozen_string_literal: true

module Gef
  class ContentTypesElement < Gef::Base
    #validations
    validates :title, length: { in: 6..10 }, allow_blank: false
    validates :guideline, length: { in: 10..500 }, allow_blank: true


    #assosiations
    belongs_to :content_types
    belongs_to :elements
    has_many :content_elements
  end
end