class Color < ApplicationRecord
  has_many :product

  validates :name,
            presence:true,
            length: {maximum: 35}
  validates :hex_code,
            presence:true,
            length: {maximum: 7},
            format:{with: HEX_REGEX}
end
