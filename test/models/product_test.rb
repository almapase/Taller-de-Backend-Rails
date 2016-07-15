require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  setup do
    @product = products(:one)
  end

  test "Pice must be mayor to cero" do
    @product.price = 0
    assert_not @product.valid?
  end

  test "Product must be have category" do
    @product.category = nil
    assert_not @product.valid?
  end

  test "Filed premium must be false for default value" do
    p = Product.create(name: "test", category_id: 1, price: 1233)
    assert_equal false, p.premium
  end

  test "premiums must be only premiun true" do
    Product.premiums.each do |p|
      assert_equal true, p.premium
    end
  end
end
