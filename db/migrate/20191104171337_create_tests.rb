class CreateTests < ActiveRecord::Migration[5.1]
  def change
    create_table :tests do |t|
      t.string :name
      t.string :altceva
      t.string :alo

      t.timestamps
    end
  end
end
