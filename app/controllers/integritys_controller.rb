class IntegritysController < ApplicationController
  def index
    @info_types = Integrity.select(:info_type).uniq.map(&:info_type)
    @integritys = Integrity.all
  end

  def show
    @integrity = Integrity.find(params[:id])
  end
end
