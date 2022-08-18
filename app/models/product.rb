class Product < ApplicationRecord
  enum gender: [:women, :men, :unisex]

  has_many_attached :photos
  has_many :product_urls
  belongs_to :color
  belongs_to :product_type
  belongs_to :model
end
