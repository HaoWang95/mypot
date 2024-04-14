require "test_helper"

class ProductTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "product attributes should not be empty" do
    product = Product.new
    assert product.invalid?
    assert product.errors[:title].any?
    assert product.errors[:description].any?
    assert product.errors[:image_url].any?
    assert product.errors[:price].any?
  end

  test "product price should be higher than 0" do
    mock_product = Product.new(title: "test", description: "test description", image_url: "lorem.jpg", price: -1)
    assert mock_product.invalid?
    assert mock_product.errors[:price].any?
    assert_equal mock_product.errors[:price], ["must be greater than $0"]
  end

  test "product price should be smaller than $200" do
    mock_product = Product.new(title: "test", description: "test description", image_url: "lorem.jpg", price: 300.0)
    assert mock_product.invalid?
    # mock_product.errors.map { |error| puts error.message }
    assert_equal mock_product.errors[:price], ["must be smaller or equal to $200"]
  end
end
