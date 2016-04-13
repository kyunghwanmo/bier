class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def new
    @products = Product.new
  end

  def show
    @products = Product.find(params[:id])
  end

  def edit
    @products = Product.find(params[:id])
  end

  def destroy
    @products = Product.find(params[:id])
    @product.destroy
    redirect_to products_url
  end

  def create
    @product = Product.new(product_params)

    if @product.save
      redirect_to products_url
    else
      render :new
    end
  end

def update
  @product = Product.find(params[:id])

  if @product.update_attributes(product_params)
    redirect_to product_url(@product)
  else
    render  :edit
    end
  end

  private
  def product_params
    params.require(:product).permit(:name, :type, :country, :price, :taste, :smell, :durability, :use, :purchasing_info, :pronunciation, :notes)
  end
end
