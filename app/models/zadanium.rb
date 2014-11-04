class Zadanium < ActiveRecord::Base
  attr_accessible :opis, :tytul, :zajecium_id

  belongs_to :zajecium
end
