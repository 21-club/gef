# frozen_string_literal: true

module Gef
  class ElementData < Gef::Base
    #validations
    validates :type, uniqueness: { case_sensitive: false }, allow_blank: false
    #validates :data, presence: true


    #assosiations
    has_many :contents, through: :content_elements
    has_many :content_elements
  end
end