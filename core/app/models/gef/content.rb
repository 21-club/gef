# frozen_string_literal: true

module Gef
  class ContentElement < Gef::Base
    #validations
    validates :type, uniqueness: { case_sensitive: false }, allow_blank: false

    #assosiations
    has_many :elements_datas, through: :content_elements #FIXME: plurale?
    has_many :content_elements
    belongs_to :content_types #FIXME: giusto?
  end
end