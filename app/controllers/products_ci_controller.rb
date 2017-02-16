class ProductsMuController < ApplicationController
   def index
 @products = Product.where(is_ci: true)
 end



 def product_params
  params.require(:product).permit(:title, :description, :quantity, :price, :image,  :is_mu, :is_ci, :is_shi)
  end
  
   end
