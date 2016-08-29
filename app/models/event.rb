class Event < ApplicationRecord
  has_many :invites
  has_many :guests, through :invites
end
