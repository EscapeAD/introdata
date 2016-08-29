class Direct < ApplicationRecord
  belongs_to :dirctor
  has_many   :films
end
