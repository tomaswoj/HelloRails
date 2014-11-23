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

class Parking < ActiveRecord::Base
  attr_accessible :adres, :pojemnosc

  has_many :cars
end
