class ContentElementSerializer < ApplicationSerializer
  attributes :id, :elements_data_id, :content_types_elements_id, :content_id

  #assosiations
  belongs_to :content
  belongs_to :elements_data
  belongs_ to :content_types_element 
end
