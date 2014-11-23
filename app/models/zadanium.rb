# == Schema Information
#
# Table name: zadania
#
#  id          :integer          not null, primary key
#  zajecium_id :integer
#  tytul       :string(255)
#  opis        :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Zadanium < ActiveRecord::Base
  attr_accessible :opis, :tytul, :zajecium_id

  belongs_to :zajecium
end
