class PublicInfosController < ApplicationController
  def index
    @info_types = PublicInfo.select(:info_type).uniq.map(&:info_type)
    @public_infos = PublicInfo.all 
  end

  def show
    @public_info = PublicInfo.find(params[:id])
  end
end
