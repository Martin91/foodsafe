class ServersController < ApplicationController
  def index
  end

  def search_company
    if !params[:company_name].empty?
      @companies = Company.where("name LIKE '%#{params[:company_name]}%'").page(params[:page]).per(10)
    else
      if !params[:register_address].empty?
        @companies = Company.where("register_address LIKE '%#{params[:register_address]}%'").page(params[:page]).per(10)
      else
        if !params[:company_license_no].empty?
          @companies = Company.where("license_no LIKE '%#{params[:company_license_no]}%'").page(params[:page]).per(10)
        else
          if !params[:license_project].empty?
            @companies = Company.where("license_project LIKE '%#{params[:license_project]}%'").page(params[:page]).per(10)
          else
            @companies = Company.page(params[:page]).per(10)
          end
        end
      end
    end
    render 'companies'
  end

  def search_product
    if !params[:product_name].empty?
      @products = Product.where("name LIKE '%#{params[:product_name]}%'").page(params[:page]).per(10)
    else
      if !params[:product_license_no].empty?
        @products = Product.where("license_no LIKE '%#{params[:product_license_no]}%'").page(params[:page]).per(10)
      else
        @products = Product.page(params[:page]).per(10)
      end
    end
    render 'products'
  end
end
