class BuyersController < ApplicationController
  def list	
	@categories = Category.all
  end
end
