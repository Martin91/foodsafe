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

  def search
    @law_types = Law.select(:law_type).uniq.map(&:law_type)
    if(!params[:keyword].empty?)
      self.search_by_key_word params[:keyword]
    else
      if(!params[:keydate].empty?)
        self.search_by_key_date params[:keydate]
      else
        @laws = Law.where("law_type = '相关法律'").page params[:page]
      end
    end
    render 'index'
  end

  def search_by_key_word(keyword)
    spilited_word = keyword.split(//)
    query_string = "%"
    spilited_word.each do |char|
      query_string = query_string + char + "%"
    end
    @laws = Law.where("title LIKE '#{query_string}'").page params[:page]
  end

  def search_by_key_date(keydate)
    spilited_date = keydate.split("-");
    query_string = "%"
    spilited_date.each do |date|
      query_string = query_string + date + "%"
    end
    @laws = Law.where("created_at LIKE '#{query_string}'").page params[:page]
  end
end
