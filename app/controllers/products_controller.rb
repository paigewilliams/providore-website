class ProductsController < ApplicationController
  def landing
    @recent_products = Product.three_most_recent
    @reviewed_products = Product.most_reviews
    render :landing
  end
  def index
    @products = Product.search(params[:search])
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      flash[:notice] = "Product successfully added!"
      redirect_to products_path
    else
      render :new
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      flash[:notice] = "Product successfully updated!"
      redirect_to products_path
    else
      render :edit
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to products_path
  end
private
  def product_params
    params.require(:product).permit(:name, :cost, :country_of_origin, :search)
  end
end
