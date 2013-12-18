class MainController < ApplicationController

  def info
    @company = Company.find(params[:id])


  end

end
