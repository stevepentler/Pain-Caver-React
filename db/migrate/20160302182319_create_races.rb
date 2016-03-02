class CreateRaces < ActiveRecord::Migration
  def change
    create_table :races do |t|
      t.string :title
      t.string :title_id
      t.float :elevation_gain
      t.float :max_elevation
      t.float :distance
      t.string :description
      t.string :website

      t.timestamps null: false
    end
  end
end
