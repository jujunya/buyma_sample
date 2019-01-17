class Item < ApplicationRecord
  belongs_to :category
  belongs_to :shop
  has_many :images
  has_many :item_sizes
  has_many :sizes, through: :item_sizes
end
