class Invite < ApplicationRecord
  belongs_to :event
  has_many   :guests
end
