class CreateZadania < ActiveRecord::Migration
  def change
    create_table :zadania do |t|
      t.integer :zajecium_id
      t.string :tytul
      t.string :opis

      t.timestamps
    end
  end
end
