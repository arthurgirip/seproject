class CreateTabel5s < ActiveRecord::Migration[5.1]
  def change
    create_table :tabel5s do |t|
      t.string :nume
      t.integer :numar

      t.timestamps
    end
  end
end
