class StoreController < ApplicationController
  def index
    @products = Product.order(:title)
    # @page_title = "Rails book store"
  end
end
