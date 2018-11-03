class CreateTips < ActiveRecord::Migration[5.2]
  def change
    create_table :tips do |t|
      t.string :title
      t.string :detail
      t.string :picture
      t.integer :type

      t.timestamps
    end
  end
end
