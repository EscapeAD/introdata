class Contributor < ApplicationRecord
  has_many :users
  has_many :repos
end
