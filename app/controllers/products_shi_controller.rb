class ProductsShiController < ApplicationController

  def index
    @products = Product.where(is_shi: true)
  end

  private

  def product_params
      params.require(:product).permit(:title, :description, :quantity, :price, :image, :mu_name, :ci_name, :shi_name, :is_mu, :is_ci, :is_shi)
  end

end
