class Category < ActiveRecord::Base
  has_many :products, dependent: :destroy
  before_validation :check_range_discount

  def check_range_discount
    unless (0..100).include?(discount)
      errors.add(:discount, "El descuento debe estar entre 0 y 100")
      return false
    end
  end

end
