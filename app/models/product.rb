class Product < ApplicationRecord
  enum sex: [:women, :men, :unisex]
  has_many_attached :photos
end
