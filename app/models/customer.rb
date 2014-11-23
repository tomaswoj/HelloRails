# == Schema Information
#
# Table name: customers
#
#  id         :integer          not null, primary key
#  login      :string(255)
#  email      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Customer < ActiveRecord::Base
  attr_accessible :email, :login

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true,  format: { with: VALID_EMAIL_REGEX }
  validates :login, presence: true
  validates :login, uniqueness: { case_sensitive: false}

end
