class CreateContentType < ActiveRecord::Migration[6.1]
  def self.up
    create_table :gef_content_types do |t|
      t.string :name

      t.timestamps
    end

    create_table :gef_elements do |t|
      t.string :type
    end

    create_table :gef_content_types_elements do |t|
      t.belongs_to :gef_content_type
      t.belongs_to :gef_elements

      t.string :title
      t.text :guideline
    end
  end
  
  def self.down
    drop_table :gef_content_types
    drop_table :gef_content_types_elements
    drop_table :gef_elements
  end
end
