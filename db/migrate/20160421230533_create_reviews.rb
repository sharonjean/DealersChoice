class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.text :description
      t.references :reviewable, polymorphic: true, index: true
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
