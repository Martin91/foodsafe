#encoding: utf-8
class IntegritysController < ApplicationController
  def index
    @info_types = Integrity.select(:info_type).uniq.map(&:info_type)
    if params[:info_type] == nil
      @integritys = Integrity.where("info_type = '质量公告'").page(params[:page])
      @title = "质量公告"
    else
      @integritys = Integrity.where("info_type = '#{params[:info_type]}'").page(params[:page])
      @title = params[:info_type]
    end
  end

  def show
    @integrity = Integrity.find(params[:id])
  end
end
