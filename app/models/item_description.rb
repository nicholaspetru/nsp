class ItemDescription < ApplicationRecord
  belongs_to :photo
  belongs_to :experience
  belongs_to :description
end
