class Description < ApplicationRecord
  has_one :item_description
  has_one :photo, through: :item_description
  has_one :experience, through: :item_description
end
