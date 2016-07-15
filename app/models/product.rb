class Product < ActiveRecord::Base
  belongs_to :category
  before_validation :price_mayor_cero, :default_value_for_premium
  validates :category, presence: true

  def price_mayor_cero
    if price <= 0
      errors.add(:price, "el precio debe ser mayor a 0")
      return false
    end
  end

  def default_value_for_premium
    if premium.nil?
      self.premium = false
      return true
    end
  end
end
