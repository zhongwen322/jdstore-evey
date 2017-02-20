class ProductsController < ApplicationController

before_action :validates_search_key, only: [:search]
before_action :authenticate_user!, only: [:favorite, :unfavorite]

def favorite
 	@product = Product.find(params[:id])
 		current_user.favorite_products << @product
 		redirect_to :back
    flash[:notice] = "成功将#{@product.title}加入收藏夹"
end

def unfavorite
 	@product = Product.find(params[:id])
 	current_user.favorite_products.delete(@product)
 	redirect_to :back
  flash[:notice] = "已将#{@product.title}从收藏夹取出"
end

def search
  if @query_string.present?
    @products = search_params
  else
    @products = Product.all
  end
end

def index
  @products = Product.all
end

def show
  @product = Product.find(params[:id])
end

def add_to_cart
  @product = Product.find(params[:id])
  if !current_cart.products.include?(@product)
    current_cart.add_product_to_cart(@product)
    flash[:notice] = "成功将#{@product.title}加入购物车"
  else
    flash[:warning] = "你的购物车已有此物品"
  end
    redirect_to :back
end


protected

def validates_search_key
  @query_string = params[:q].gsub(/\\|\'|\/|\?/, "") if params[:q].present?
end

private

def search_params
  Product.ransack({:title_or_description_cont => @query_string}).result(distinct: true)
end

end
