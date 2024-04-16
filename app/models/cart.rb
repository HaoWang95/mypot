class Cart < ApplicationRecord
  # use plural to represent another model?
  has_many :line_items, dependent: :destroy

  def add_product(product)
    current_item = line_items.find_by(product_id: product.id)
    if current_item
      current_item.quantity += 1
      current_item.price = current_item.quantity * product.price
    else
      current_item = line_items.build(product_id: product.id)
      current_item.quantity = 1
      current_item.price = product.price
    end
    current_item
  end
end
