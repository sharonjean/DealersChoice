class CreateTagsdrinks < ActiveRecord::Migration
  def change
    create_table :tagsdrinks do |t|
      t.integer :tag_id
      t.references :drink, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
