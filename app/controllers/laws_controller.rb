#encoding: utf-8

class LawsController < ApplicationController
  def index
    @law_types = Law.select(:law_type).uniq.map(&:law_type)
    if params[:law_type] == nil
      @laws = Law.where("law_type = '相关法律'").page params[:page]
    else
      @laws = Law.where("law_type = '" + params[:law_type]+ "'").page params[:page]
    end
  end

  def show
    @law = Law.find(params[:id])
  end
end
