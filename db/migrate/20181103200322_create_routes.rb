class CreateRoutes < ActiveRecord::Migration[5.2]
  def change
    create_table :routes do |t|
      t.integer :operator_id
      t.integer :suburb_id
      t.string :horary

      t.timestamps
    end
  end
end
