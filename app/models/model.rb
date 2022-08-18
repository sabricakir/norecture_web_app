class Model < ApplicationRecord
  has_many :product

  validates :name,
            presence:true,
            length: {maximum: 50}
  validates :waist,
            presence:true,
            numericality: {greater_than: 0}
  validates :shoulder,
            presence:true,
            numericality: {greater_than: 0}
  validates :chest,
            presence:true,
            numericality: {greater_than: 0}
  validates :length,
            presence:true,
            numericality: {greater_than: 0}
  validates :hip,
            presence:true,
            numericality: {greater_than: 0}
end
