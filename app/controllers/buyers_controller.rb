class BuyersController < ApplicationController
  def list	
	@categories = Category.all
	@products = []
	@display_products = []
	@product_price = params[:price]
	if !params[:category_id].blank?		
		@product_price.each do |product_price|
			if product_price == 1
				@products = Product.where(category_id: params[:category_id]).where("price < 400")		
			end
			if product_price == 2
				@products = Product.where(category_id: params[:category_id]).where("price > 400")		
			end
		end		
	end	
  end
end
