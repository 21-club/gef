class CreateContent < ActiveRecord::Migration[6.1]
  def self.up
    create_table :gef_contents do |t|
      t.string :name
      t.belongs_to :gef_content_types

      t.timestamps
    end

    create_table :gef_elements_data do |t|
      t.jsonb :data
      t.string :type
    end

    create_table :gef_content_elements do |t|
      t.belongs_to :gef_elements_data_id
      t.belongs_to :gef_content_types_elements_id
      t.belongs_to :gef_content_id
    end
  end

  def self.down
    drop_table :gef_contents
    drop_table :gef_elements_data
    drop_table :gef_content_elements
  end
end
