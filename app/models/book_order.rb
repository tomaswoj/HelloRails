# == Schema Information
#
# Table name: book_orders
#
#  id         :integer          not null, primary key
#  book_id    :integer
#  customer   :string(255)
#  ship_to    :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class BookOrder < ActiveRecord::Base
  attr_accessible :book_id, :customer, :ship_to

  belongs_to :book
end
