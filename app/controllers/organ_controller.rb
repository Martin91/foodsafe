#encoding: utf-8

class OrganController < ApplicationController
  def show
    @organ_duty_titles = Organ.select(:title).uniq.map(&:title)
    if params.empty? || params[:title] == nil  
      @organ_duty = Organ.find_by_title("部门职能")
      @title = "部门职能"
    else
      @organ_duty = Organ.find_by_title(params[:title])
      @title = params[:title]
    end
  end
end
