class CreatePublications < ActiveRecord::Migration[5.2]
  def change
    create_table :publications do |t|
      t.string :picture
      t.integer :state_id
      t.integer :user_id

      t.timestamps
    end
  end
end
