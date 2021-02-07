class ElementSerializer < ApplicationSerializer
  attributes :id, :type

  #assosiations
  has_many :content_types, through: :content_types_elements
  has_many :content_types_elements
end
