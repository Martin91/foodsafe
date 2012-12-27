class LawsController < ApplicationController
  def index
    @law_types = Law.select(:law_type).uniq.map(&:law_type)
    @laws = Law.all
  end

  def show
    @law = Law.find(params[:id])
  end
end
