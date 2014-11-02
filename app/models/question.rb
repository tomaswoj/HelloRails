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

class Question < ActiveRecord::Base
  attr_accessible :category_id, :hint, :title

  belongs_to :category
end
