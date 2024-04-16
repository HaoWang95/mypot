class StoreController < ApplicationController
  @counter = 0

  def index
    # exercise for using session
    session[:view_count] ||= 0
    session[:view_count] += 1
    @products = Product.order(:title)
    # @page_title = "Rails book store"
  end
end
