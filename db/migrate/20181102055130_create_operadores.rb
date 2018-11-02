class CreateOperadores < ActiveRecord::Migration[5.2]
  def change
    create_table :operadores do |t|
      t.string :nombre
      t.string :telefono
      t.string :email

      t.timestamps
    end
  end
end
