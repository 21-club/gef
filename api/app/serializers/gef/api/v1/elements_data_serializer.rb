class ElementsDataSerializer < ApplicationSerializer
  attributes :id, :type, :data

  #assosiations
  has_many :contents, through: :content_elements
  has_many :content_elements
end
