class GovInfosController < ApplicationController
  def index
    @info_types = GovInfo.select(:info_type).uniq.map(&:info_type)
    @gov_infos = GovInfo.all
  end
  def show
    @gov_info = GovInfo.find(params[:id])
  end
end
