class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.integer :parking_id
      t.string :registration
      t.string :owner

      t.timestamps
    end
  end
end
