class MainController < ApplicationController


  def index
    @companies = Company.all


  end

  def info
    @company = Company.find(params[:id])

  end

end
