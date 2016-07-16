class Product < ActiveRecord::Base
  # belongs_to :category, counter_cache: true
  belongs_to :category
  before_validation :default_value_for_premium
  validates :category, presence: true
  validates :price, numericality: {greater_than: 0}
  after_destroy :destroy_category_after_last_product

  scope :premiums, -> { where(premium: true)  }
  scope :last_5, -> { order(created_at: :desc).limit(5)  }
  scope :last_n, -> (n){ order(created_at: :desc).limit(n)  }
  scope :filter_by_name, ->(query) { where("name like ?", "%#{query}%")  }
  scope :filter_by_price, ->(query) { where(price: query)  }

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

  def price_with_discount
    (price - (price * (category.discount/100.0))).to_i
  end


end
