class CreateLines < ActiveRecord::Migration
  def change
    create_table :lines do |t|
      t.string :brand
      t.string :length
      t.string :width
      t.string :style
      t.string :system
      t.string :is_active

      t.timestamps null: false
    end
  end
end
