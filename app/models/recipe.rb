class Recipe < ApplicationRecord
  has_many :ingredents
  has_many :foods, though :ingredents
end
