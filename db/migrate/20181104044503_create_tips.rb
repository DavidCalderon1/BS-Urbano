class CreateTips < ActiveRecord::Migration[5.2]
  def change
    create_table :tips do |t|
      t.string :title
      t.text :detail
      t.string :picture
      t.integer :tip_type

      t.timestamps
    end
  end
end
