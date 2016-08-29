class Ingredent < ApplicationRecord
  has_and_belongs_to_many :foods
  has_and_belongs_to_many :ingredents
end
