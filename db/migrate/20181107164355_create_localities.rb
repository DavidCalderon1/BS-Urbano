class CreateLocalities < ActiveRecord::Migration[5.2]
  def change
    create_table :localities do |t|
      t.string :name
      t.integer :city_id
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
