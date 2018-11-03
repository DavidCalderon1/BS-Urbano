class CreateCasos < ActiveRecord::Migration[5.2]
  def change
    create_table :casos do |t|
      t.integer :usuario_id
      t.integer :barrio_id
      t.integer :tipo_basura
      t.string :foto
      t.text :detalle
      t.integer :estado_id
      t.datetime :fecha

      t.timestamps
    end
  end
end
