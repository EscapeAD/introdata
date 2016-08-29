class Director < ApplicationRecord
  has_many :directs
  has_many :films
  has_many :films, through: :directs
end
