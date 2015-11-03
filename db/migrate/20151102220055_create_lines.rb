class CreateLines < ActiveRecord::Migration
  def change
    create_table :lines do |t|
      t.string :brand
      t.integer :length
      t.integer :width
      t.string :style
      t.string :system
      t.boolean :is_active
      t.references :user, index: true, foreign_key: true


      t.timestamps null: false
    end
  end
end
