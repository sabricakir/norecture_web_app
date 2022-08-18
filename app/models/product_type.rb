class ProductType < ApplicationRecord
  has_many :product

  validates :name,
            presence:true,
            length: {maximum: 35}

end
