class CreateActiveLines < ActiveRecord::Migration
  def change
    create_table :active_lines do |t|
      t.float :latitude
      t.float :longitude
      t.string :location
      t.string :difficulty
      t.string :message
      t.datetime :started_at
      t.datetime :finished_at
      t.references :line, index: true, foreign_key: true


      t.timestamps null: false
    end
  end
end
