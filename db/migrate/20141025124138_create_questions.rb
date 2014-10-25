class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.integer :category_id
      t.string :title
      t.string :hint

      t.timestamps
    end
  end
end
