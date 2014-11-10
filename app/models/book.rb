class Book < ActiveRecord::Base
  attr_accessible :abstract, :author, :title, :created_at, :rating, :isbn
  has_many :book_orders
end
