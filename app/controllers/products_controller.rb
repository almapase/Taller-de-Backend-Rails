class ProductsController < ApplicationController
  def index
    @products = Product.all
    @products = Product.filter_by_name(params[:name]) if params[:name].present?
    @products = @products.where(price: params[:price]) if params[:price].present?
    # @products = Product.filter_by_price(params[:price]) if params[:price].present?
  end

  def filter
    redirect_to products_index_path(name: params[:name], price: params[:price])
  end
end
