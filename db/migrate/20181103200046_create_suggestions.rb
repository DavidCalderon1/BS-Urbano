class CreateSuggestions < ActiveRecord::Migration[5.2]
  def change
    create_table :suggestions do |t|
      t.string :detail
      t.integer :user_id
      t.datetime :date

      t.timestamps
    end
  end
end
