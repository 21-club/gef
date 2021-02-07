class ContentTypesElementSerializer < ApplicationSerializer
  attributes :id, :title, :guideline, :content_type_id, :element_id

  #assosiations
  belongs_to :content_types
  belongs_to :elements
  has_many :content_elements
end
