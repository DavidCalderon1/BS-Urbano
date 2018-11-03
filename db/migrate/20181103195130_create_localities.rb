class CreateLocalities < ActiveRecord::Migration[5.2]
  def change
    create_table :localities do |t|
      t.string :name
      t.integer :city_id
      t.integer :lat
      t.integer :long

      t.timestamps
    end
  end
end
