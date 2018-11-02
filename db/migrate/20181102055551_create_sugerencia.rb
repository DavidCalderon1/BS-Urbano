class CreateSugerencia < ActiveRecord::Migration[5.2]
  def change
    create_table :sugerencia do |t|
      t.string :detalle
      t.integer :usuario_id
      t.datetime :fecha

      t.timestamps
    end
  end
end
