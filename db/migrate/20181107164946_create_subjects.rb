class CreateSubjects < ActiveRecord::Migration[5.2]
  def change
    create_table :subjects do |t|
      t.integer :user_id
      t.integer :suburb_id
      t.string :address
      t.float :latitude
      t.float :longitude
      t.integer :garbage_type_id
      t.string :picture
      t.text :detail
      t.integer :state_id

      t.timestamps
    end
  end
end
