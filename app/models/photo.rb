class Photo < ApplicationRecord
  has_many :descriptions
  has_many :descriptions, through: :item_descriptions
end
