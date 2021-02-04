# frozen_string_literal: true

module Gef
  class ContentElement < Gef::Base
    #validations


    #assosiations
    belongs_to :content
    belongs_to :elements_data
    belongs_ to :content_types_element 

  end
end