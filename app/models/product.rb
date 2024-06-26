class Product < ApplicationRecord
  has_many :line_items

  # so the rule is being created dynamically?
  before_destroy :ensure_not_referenced_by_any_line_item

  # all model attributes should present
  validates :title, :description, :image_url, presence: true

  validates :title, uniqueness: { message: "product title should be unique" }, length: { minimum: 1, maximum: 150 }

  # The price should be a valid number and larger than 0
  validates :price, numericality: { greater_than: 1, message: "must be greater than $0" }
  validates :price, numericality: { less_than_or_equal_to: 200, message: "must be smaller or equal to $200" }

  validates :image_url, allow_blank: true, format: {
                          with: %r{\.(gif|jpg|png)\z}i,
                          message: "must be a url for GIF, JPG or PNG",
                        }

  private

  def ensure_not_referenced_by_any_line_item
    unless line_items.empty?
      errors.add(:base, "Line Items present")
      throw :abort
    end
  end
end
