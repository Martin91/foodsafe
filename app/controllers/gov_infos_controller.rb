class GovInfosController < ApplicationController
  def index
    @info_types = GovInfo.select(:info_type).uniq
    @gov_infos = GovInfo.all
  end
  def show
  end
end
