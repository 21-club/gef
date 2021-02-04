# frozen_string_literal: true

module Gef
  class Content < Gef::Base
    #validations
    validates :name, uniqueness: { case_sensitive: false }, allow_blank: false

    #assosiations
    has_many :elements_datas, through: :content_elements
    has_many :content_elements
    belongs_to :content_type 
  end
end