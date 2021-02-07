class ContentSerializer < ApplicationSerializer
  attributes :id, :name, :content_type_id

  #assosiations
  has_many :elements_datas, through: :content_elements
  has_many :content_elements
  belongs_to :content_type 
end