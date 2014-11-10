class Parking < ActiveRecord::Base
  attr_accessible :adres, :pojemnosc

  has_many :cars
end
