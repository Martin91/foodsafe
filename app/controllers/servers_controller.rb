class ServersController < ApplicationController
  def index
  end

  def search_company
    @companies = Company.page(params[:page]).per(10)
    render 'companies'
  end

  def search_product
  end
end
