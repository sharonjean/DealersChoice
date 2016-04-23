class CreateBars < ActiveRecord::Migration
  def change
    create_table :bars do |t|
      t.string :name
      t.references :reviewable, polymorphic: true, index: true

      t.timestamps null: false
    end
  end
end
