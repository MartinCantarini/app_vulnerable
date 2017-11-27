class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :categoria
      t.string :descripcion
      t.string :nombre
      t.integer :precio

      t.timestamps
    end
  end
end
