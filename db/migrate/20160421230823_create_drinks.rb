class CreateDrinks < ActiveRecord::Migration
  def change
    create_table :drinks do |t|
      t.string :name
      t.text :description
      t.integer :bar_id

      t.timestamps null: false
    end
  end
end
