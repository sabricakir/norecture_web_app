class Product < ApplicationRecord
  enum gender: [:women, :men, :unisex]
  has_many_attached :photos
end
