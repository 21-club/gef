class ContentTypeSerializer < ApplicationSerializer
  attributes :id, :name

  #assosiations
  has_many :elements, through: :content_types_elements
  has_many :content_types_elements
  has_many :contents
end
