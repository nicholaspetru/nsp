class ItemDescription < ApplicationRecord
  has_one :photo
  has_one :experience
  belongs_to :description
end
