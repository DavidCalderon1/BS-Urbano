class CreateEstados < ActiveRecord::Migration[5.2]
  def change
    create_table :estados do |t|
      t.string :nombre
      t.integer :tipoe_id

      t.timestamps
    end
  end
end
