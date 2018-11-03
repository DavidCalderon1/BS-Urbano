class CreatePublicaciones < ActiveRecord::Migration[5.2]
  def change
    create_table :publicaciones do |t|
      t.string :foto
      t.integer :estado_id
      t.integer :usuario_id

      t.timestamps
    end
  end
end
