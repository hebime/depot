class StoreController < ApplicationController
  def index
  	@products = Product.order(:title)
  	@cart = current_cart

  	#increment the number of times a user visits the store
  	@store_count = increment_store_count
  end
end
