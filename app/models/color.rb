class Color < ApplicationRecord
  before_save :set_default_attributes

  has_many :product

  validates :name,
            presence:true,
            length: {maximum: 35}
  validates :hex_code,
            presence:true,
            length: {maximum: 7},
            format:{with: HEX_REGEX}
  private
  def set_default_attributes
    self.name = name.humanize if name.present?
  end
end
