require 'test_helper'

class CategoryTest < ActiveSupport::TestCase
  setup do
    @category = categories(:one)
  end

  test "After deleted Category the product deleted too" do
    @category.destroy
    assert_equal 0, @category.products.size
  end

  test "discount must beetwen 0 and 100" do
    @category.discount = 120
    assert_not (0..100).include?(@category.discount)
  end
end
