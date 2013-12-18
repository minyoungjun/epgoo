class AdminController < ApplicationController

  def new_info
    company = Company.new
    company.title = params[:title]
    company.content = params[:content]
    company.subtitle = params[:subtitle]
    company.address = params[:address]
    company.phone = params[:phone]
    company.homepage = params[:homepage]
    company.shopping = params[:shopping]
    company.save
    redirect_to :action => "edit",
                :id => company.id
  end

  def edit
    @company = Company.find(params[:id])

  end

end
