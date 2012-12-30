#encoding: utf-8

class PublicInfosController < ApplicationController
  def index
    @info_types = PublicInfo.select(:info_type).uniq.map(&:info_type)
    if params[:info_type] == nil
      @public_infos = PublicInfo.where("info_type = '部门文件'").page(params[:page])
      @title = "部门文件"
    else
      @public_infos = PublicInfo.where("info_type = '#{params[:info_type]}'").page(params[:page])
      @title = params[:info_type]
    end
  end

  def show
    @public_info = PublicInfo.find(params[:id])
  end
end
