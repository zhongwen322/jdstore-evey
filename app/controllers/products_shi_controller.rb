class ProductsShiController < ApplicationController

  def index
    @products_shi = Product.find([11,12,13,14,15])
  end

  private

  def product_params
      params.require(:product).permit(:title, :description, :quantity, :price, :image)
  end
  
end
