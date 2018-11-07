class CreateSuburbs < ActiveRecord::Migration[5.2]
  def change
    create_table :suburbs do |t|
      t.string :name
      t.integer :locality_id
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
