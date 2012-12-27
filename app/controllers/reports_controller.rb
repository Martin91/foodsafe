# encoding: utf-8
class ReportsController < ApplicationController
  def index
    @report = Report.new
    @reports = Report.all
  end

  def create
    params[:report][:no] = Time.now.to_formatted_s(:number)
    params[:report][:status] = "未受理"
    @report = Report.new(params[:report])

    if @report.save
      redirect_to reports_path
    else
      redirect_to reports_path
    end
  end
end
