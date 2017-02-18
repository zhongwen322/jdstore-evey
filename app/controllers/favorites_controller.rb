class FavoritesController < ApplicationController

  before_filter :authenticate_user!

  def index
    @products = current_user.favorite_products
  end

end
