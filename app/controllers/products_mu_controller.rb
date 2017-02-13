class ProductsMuController < ApplicationController

def index
  @products_mu = Product.find([1,2,3,4,5])


end



  private
  def product_params
    params.require(:product).permit(:title, :description, :quantity, :price, :image)
  end
end
