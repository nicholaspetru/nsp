class Experience < ApplicationRecord
  has_many :descriptions
  has_many :item_descriptions
  has_many :descriptions, through: :item_descriptions
end
