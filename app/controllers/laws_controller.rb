class LawsController < ApplicationController
  def index
    @law_types = Law.select(:law_type).uniq.map(&:law_type)
    @laws = Law.order(:created_at).page params[:page]
  end

  def show
    @law = Law.find(params[:id])
  end
end
