class SimplePagesController < ApplicationController
  def index
    @products = Product.limit(5)
    @featured_product = Product.first
  end

  def landing_page

  end
end
