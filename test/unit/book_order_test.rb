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

require 'test_helper'

class BookOrderTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
