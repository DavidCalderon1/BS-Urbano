class CreateGarbageTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :garbage_types do |t|
      t.string :name
      t.string :picture
      t.text :description

      t.timestamps
    end
  end
end
