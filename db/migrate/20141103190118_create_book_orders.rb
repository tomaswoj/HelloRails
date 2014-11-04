class CreateBookOrders < ActiveRecord::Migration
  def change
    create_table :book_orders do |t|
      t.integer :book_id
      t.string :customer
      t.string :ship_to

      t.timestamps
    end
  end
end
