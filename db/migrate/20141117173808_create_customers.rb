class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :login
      t.string :email

      t.timestamps
    end
  end
end
