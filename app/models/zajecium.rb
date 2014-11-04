class Zajecium < ActiveRecord::Base
  attr_accessible :opis, :temat
  has_many :zadaniums
end
