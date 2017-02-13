class ProductsCiController < ApplicationController

  def index
    @products_ci = Product.find([6,7,8,9,10])

  end



    private
    def product_params
      params.require(:product).permit(:title, :description, :quantity, :price, :image)
    end
end
