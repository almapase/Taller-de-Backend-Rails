require 'test_helper'

class CategoryTest < ActiveSupport::TestCase
  setup do
    @category = categories(:one)
  end

  test "After deleted Category the product deleted too" do
    @category.destroy
    assert_equal 0, @category.products.size
  end
end
