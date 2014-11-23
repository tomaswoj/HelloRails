# == Schema Information
#
# Table name: zajecia
#
#  id         :integer          not null, primary key
#  temat      :string(255)
#  opis       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class ZajeciumTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
