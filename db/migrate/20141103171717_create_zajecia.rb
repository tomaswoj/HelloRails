class CreateZajecia < ActiveRecord::Migration
  def change
    create_table :zajecia do |t|
      t.string :temat
      t.string :opis

      t.timestamps
    end
  end
end
