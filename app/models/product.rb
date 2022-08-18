class Product < ApplicationRecord
  before_save :set_default_attributes

  enum gender: [:women, :men, :unisex]

  has_many_attached :photos
  has_many :product_urls
  belongs_to :color
  belongs_to :product_type
  belongs_to :model

  validates :name,
            presence:true,
            length: {maximum: 85}
  validates :price,
            presence:true,
            numericality: {greater_than: 0}
  validates :material,
            presence:true,
            length: {maximum: 50}
  validates :description,
            presence:true,
            length: {maximum: 500}
  private
  def set_default_attributes
    self.name = name.humanize if name.present?
    self.material = material.humanize if material.present?
  end

end
