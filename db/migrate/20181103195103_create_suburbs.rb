class CreateSuburbs < ActiveRecord::Migration[5.2]
  def change
    create_table :suburbs do |t|
      t.string :name
      t.integer :locality_id
      t.integer :lat
      t.integer :long

      t.timestamps
    end
  end
end
