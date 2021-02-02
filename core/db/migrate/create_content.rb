class CreateContent < ActiveRecord::Migration
  def self.up
    create_table :contents do |t|
      t.string :name
      t.belongs_to :content_types

      t.timestamps
    end

    create_table :elements_data do |t|
      t.jsonb :data
      t.string :type
    end

    create_table :content_elements do |t|
      t.belongs_to :elements_data_id
      t.belongs_to :content_types_elements_id
      t.belongs_to :content_id
    end

    
  end
  def self.down
    drop_table :contents
    drop_table :elements_data
    drop_table :content_elements
  end
end