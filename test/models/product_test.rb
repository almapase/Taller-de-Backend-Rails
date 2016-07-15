require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  setup do
    @product = products(:one)
  end
  test "Pice must be mayor to 0" do
    @product.price = 0
    assert_not @product.valid?
  end
end
