class ProductsController < ApplicationController
  require 'rqrcode'

  def index
    @products = Product.page params[:page]
    render "servers/products"
  end

  def show
    product = Product.find params[:id]
    product_value_string = product.name + "\n" + product.license_no + "\n" + product.company_name + "\n" + product.company_address + "\n" + product.health_function
    @qr = RQRCode::QRCode.new product_value_string, :size => 8
  end
end
