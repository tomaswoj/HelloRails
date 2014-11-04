class BookOrder < ActiveRecord::Base
  attr_accessible :book_id, :customer, :ship_to

  belongs_to :book
end
