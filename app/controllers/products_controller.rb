class ProductsController < ApplicationController

  before_action :set_product, only: %i[show destroy]

  def index
    @query = Product.ransack(params[:q])
    @products = @query.result.page(params[:page])
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)

    if @product.save
      redirect_to @product, notice: 'Product created'
    else
      render :new
    end
  end

  def destroy
    @product.destroy
    redirect_to products_path, notice: 'Product was deleted'
  end

  private

  def set_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:title, variants_attributes: %i[id title])
  end
end
