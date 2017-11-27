class CreateFlags < ActiveRecord::Migration[5.1]
  def change
    create_table :flags do |t|
      t.string :content
      t.string :token

      t.timestamps
    end
  end
end
