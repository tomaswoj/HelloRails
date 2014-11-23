# == Schema Information
#
# Table name: cars
#
#  id             :integer          not null, primary key
#  parking_id     :integer
#  registration   :string(255)
#  owner          :string(255)
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  abonament_card :text
#

require 'test_helper'

class CarTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
