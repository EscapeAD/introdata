class Food < ApplicationRecord
  has_many :ingredents
  belongs_to :recipe, though :ingredents
end
