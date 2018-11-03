class CreateSubjects < ActiveRecord::Migration[5.2]
  def change
    create_table :subjects do |t|
      t.integer :user_id
      t.integer :suburb_id
      t.integer :user_type_id
      t.string :picture
      t.text :detail
      t.integer :state_id
      t.datetime :date

      t.timestamps
    end
  end
end
