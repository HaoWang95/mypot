class Cart < ApplicationRecord
  # use plural to represent another model?
  has_many :line_items, dependent: :destroy
end
