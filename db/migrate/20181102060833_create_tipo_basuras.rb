class CreateTipoBasuras < ActiveRecord::Migration[5.2]
  def change
    create_table :tipo_basuras do |t|
      t.string :nombre
      t.string :foto
      t.string :descripcion

      t.timestamps
    end
  end
end
