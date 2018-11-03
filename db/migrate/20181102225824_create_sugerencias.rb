class CreateSugerencias < ActiveRecord::Migration[5.2]
  def change
    create_table :sugerencias do |t|

      t.timestamps
    end
  end
end
