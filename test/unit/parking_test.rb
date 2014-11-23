# == Schema Information
#
# Table name: parkings
#
#  id         :integer          not null, primary key
#  adres      :string(255)
#  pojemnosc  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class ParkingTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
