class Question < ActiveRecord::Base
  attr_accessible :category_id, :hint, :title

  belongs_to :category
end
