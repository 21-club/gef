class CreateContentType < ActiveRecord::Migration
  def self.up
    create_table :content_types do |t|
      t.string :name

      t.timestamps
    end

    create_table :elements do |t|
      t.string :type
    end

    create_table :content_types_elements do |t|
      t.belongs_to :content_type
      t.belongs_to :elements

      t.string :title
      t.text :guideline

    end
  end
  
  def self.down
    drop_table :content_types
    drop_table :content_types_elements
    drop_table :elements
  end
end