# == Schema Information
#
# Table name: zadania
#
#  id          :integer          not null, primary key
#  zajecium_id :integer
#  tytul       :string(255)
#  opis        :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class ZadaniumTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
