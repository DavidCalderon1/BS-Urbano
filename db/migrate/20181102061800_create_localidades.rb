class CreateLocalidades < ActiveRecord::Migration[5.2]
  def change
    create_table :localidades do |t|
      t.string :nombre
      t.integer :ciudad_id
      t.string :latitud
      t.string :longitud

      t.timestamps
    end
  end
end
