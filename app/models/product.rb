class Product < ActiveRecord::Base
  belongs_to :category
  before_validation :price_mayor_cero

  def price_mayor_cero
    if price <= 0
      errors.add(:price, "el precio debe ser mayor a 0")
      return false
    end
  end
end
