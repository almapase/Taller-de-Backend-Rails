class Product < ActiveRecord::Base
  belongs_to :category
  before_validation :price_mayor_cero, :default_value_for_premium
  validates :category, presence: true
  after_destroy :destroy_category_after_last_product

  scope :premiums, -> { where(premium: true)  }
  scope :last_5, -> { order(created_at: :desc).limit(5)  }
  scope :last_n, -> (n){ order(created_at: :desc).limit(n)  }

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

  def destroy_category_after_last_product
    if category.products.size == 0
      category.destroy
    end
  end
end
