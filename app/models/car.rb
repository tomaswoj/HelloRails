class Car < ActiveRecord::Base
  attr_accessible :owner, :parking_id, :registration, :abonament_card
  belongs_to :parking
end
