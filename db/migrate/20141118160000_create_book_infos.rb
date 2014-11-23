class CreateBookInfos < ActiveRecord::Migration
  def up
    update "create view book_infos as select id, title, author from books"
  end
  def down
    update "drop view book_infos"
  end
end
