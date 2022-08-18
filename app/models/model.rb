class Model < ApplicationRecord
  before_save :set_default_attributes

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

  private
  def set_default_attributes
    self.name = name.humanize if name.present?
  end
end
