#encoding: utf-8

class GovInfosController < ApplicationController
  def index
    @info_types = GovInfo.select(:info_type).uniq.map(&:info_type)
    if params[:info_type] == nil
      @gov_infos = GovInfo.where("info_type='工作计划'").page params[:page]
    else
      @gov_infos = GovInfo.where("info_type='#{params[:info_type]}'").page params[:page]
    end
  end
  def show
    @gov_info = GovInfo.find params[:id]
  end
end
