# == Schema Information
#
# Table name: questions
#
#  id          :integer          not null, primary key
#  category_id :integer
#  title       :string(255)
#  hint        :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class QuestionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
