# frozen_string_literal: true

module Gef
  class ContentElement < Gef::Base
    #validations
    validates :resource_id, :resource_type, :content_types_elements_id, presence: true

    #!! Vorrei validare che resource_type è uno dei elements.type ma visto che non secondo me
    #non ha molto senso considerato che content_elements viene creato a partire da content_types_element
    # questo significa che dovrei aggiungere una validazione su content_types_elements ->

    #FIXME: resource_type -> elements_data_type || elements_type
    #FIXME: resource_id -> elements_data_id  (NON SERVE LA PRESENCE ??)

    #assosiations
    belongs_to :contents
    belongs_to :elements_datas #FIXME: plurale?// belongs_to messo secondo il ragionamento di content_types_elements tabella di join
    belongs_ to :content_types_elements #FIXME: giusto?

  end
end