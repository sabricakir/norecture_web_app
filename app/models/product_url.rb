class ProductUrl < ApplicationRecord
  belongs_to :product


  validates :body,
            presence:true,
            length: {maximum: 85}
  validates :image_url,
            presence:true,
            length: {maximum: 85},
            format:{with: URL_REGEX}
end
