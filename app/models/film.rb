class Film < ApplicationRecord
  belongs_to :director
  belongs_to :direct
  belongs_to :director, through :direct
  has_and_belongs_to_many :actors

end
