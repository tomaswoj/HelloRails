# == Schema Information
#
# Table name: books
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  abstract   :string(255)
#  author     :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  rating     :integer
#  isbn       :text
#  isbn_2     :string(255)
#

class Book < ActiveRecord::Base
  attr_accessible :abstract, :author, :title, :created_at, :rating, :isbn
  has_many :book_orders
end

#FIXME
