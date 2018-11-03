class CreateRutas < ActiveRecord::Migration[5.2]
  def change
    create_table :rutas do |t|

      t.timestamps
    end
  end
end
