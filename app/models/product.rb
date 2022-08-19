class Product < ApplicationRecord
  before_save :set_default_attributes

  enum gender: [:women, :men]

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
  validates :photos,
            presence:true,
            length: {is: 4}
  validate :photos_extension_validation

  private
  def set_default_attributes
    self.name = name.humanize if name.present?
    self.material = material.humanize if material.present?
  end

  def photos_extension_validation
    photos.each do |photo|
      unless photo.content_type.in?(%('image/jpeg image/png image/jpg'))
        errors.add(:photos, 'Lütfen Sadece jpg, jpeg ve png formatlarında resim yükleyiniz.')
      end
    end
  end

end
