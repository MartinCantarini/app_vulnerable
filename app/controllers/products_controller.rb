class ProductsController < ApplicationController

  def index
    @products = Product.all
    @products_count = @products.count
  end

  def show
    @product = Product.find(params[:id])
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(products_params)
      redirect_to products_path
    else
      redirect_to edit_product_path(@product.id)
    end
  end

  def new
    @product = Product.new
  end

  def create
    binding.pry
    @product = Product.new(products_params)
    if @product.save
      redirect_to products_path
    else
      redirect_to new_products_path
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    if @product.save
      redirect_to products_path
    else
      redirect_to products_path
    end
  end

  def products_params
    params.require(:product).permit(:nombre, :descripcion, :precio, :categoria)
  end

end
