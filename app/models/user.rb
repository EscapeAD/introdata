class User < ApplicationRecord
  has_many :repos
  has_many :contributors
  has_many :contributors, through: :repos
  has_many :tweets

end
