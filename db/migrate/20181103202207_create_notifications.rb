class CreateNotifications < ActiveRecord::Migration[5.2]
  def change
    create_table :notifications do |t|
      t.integer :subject_id
      t.integer :user_id
      t.integer :seen

      t.timestamps
    end
  end
end
