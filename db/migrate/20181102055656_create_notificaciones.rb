class CreateNotificaciones < ActiveRecord::Migration[5.2]
  def change
    create_table :notificaciones do |t|
      t.integer :caso_id
      t.integer :usuario_id
      t.integer :visto

      t.timestamps
    end
  end
end
