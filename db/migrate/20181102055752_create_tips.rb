class CreateTips < ActiveRecord::Migration[5.2]
  def change
    create_table :tips do |t|
      t.string :titulo
      t.string :detalle
      t.string :foto
      t.integer :tipot_id

      t.timestamps
    end
  end
end
