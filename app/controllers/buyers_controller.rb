class BuyersController < ApplicationController
  def list	
	@categories = Category.all
	@products = params[:categories].blank? ? Product.all : Product.where(category_id: params[:categories])	
  end
end
