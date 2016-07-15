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
end
