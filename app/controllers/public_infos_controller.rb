#encoding: utf-8

class PublicInfosController < ApplicationController
  def index
    @info_types = PublicInfo.select(:info_type).uniq.map(&:info_type)
    if params[:info_type] == nil
      @public_infos = PublicInfo.where("info_type = '部门文件'").page(params[:page])
    else
      @public_infos = PublicInfo.where("info_type = '#{params[:info_type]}'").page(params[:page])
    end
  end

  def show
    @public_info = PublicInfo.find(params[:id])
  end
end
