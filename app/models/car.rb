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

class Car < ActiveRecord::Base
  attr_accessible :owner, :parking_id, :registration, :abonament_card
  belongs_to :parking
end
