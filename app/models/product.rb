class Product < ApplicationRecord
  include Filterable

  scope :filter_by_gender, -> (gender) { where gender: gender }
  scope :filter_by_color, -> (color) {Product.joins(:color).where(color: {name: color})}
  scope :filter_by_product_type, -> (product_type) {Product.joins(:product_type).where(product_type: {name: product_type.gsub('-',' ')})}
  scope :filter_by_descending_price, -> (descending_price) {order(price: :desc) if descending_price}
  scope :filter_by_ascending_price, -> (ascending_price) {order(price: :asc) if ascending_price}
  scope :filter_by_more_than_price, -> (price) {where("price >= ?", price)}
  scope :filter_by_less_than_price, -> (price) {where("price <= ?", price)}
  scope :filter_by_price_range, -> (price_range) {where("price >= ? AND price <= ?", price_range.first, price_range.last)}
  scope :filter_by_contains, -> (name) { where("lower(name) like ?", "%#{name.downcase}%")}

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
            presence:true
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
