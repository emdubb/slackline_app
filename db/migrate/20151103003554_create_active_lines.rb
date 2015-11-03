class CreateActiveLines < ActiveRecord::Migration
  def change
    create_table :active_lines do |t|
      t.float :latitude
      t.float :longitude
      t.string :difficulty
      t.string :message

      t.timestamps null: false
    end
  end
end
