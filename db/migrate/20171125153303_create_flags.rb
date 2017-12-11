class CreateFlags < ActiveRecord::Migration[5.1]
  def change
    create_table :flags do |t|
      t.integer :id_flag
      t.string :content
      t.string :token

      t.timestamps
    end
  end
end
