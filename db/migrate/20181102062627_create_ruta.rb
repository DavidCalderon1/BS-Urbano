class CreateRuta < ActiveRecord::Migration[5.2]
  def change
    create_table :ruta do |t|
      t.integer :operador_id
      t.integer :barrio_id
      t.string :horario

      t.timestamps
    end
  end
end
