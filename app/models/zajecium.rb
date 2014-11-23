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

class Zajecium < ActiveRecord::Base
  attr_accessible :opis, :temat
  has_many :zadaniums
end
