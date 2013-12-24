class AdminController < ApplicationController

  before_filter :is_admin, :except => [:index, :login_process]

  def index


  end

  def login_process

    if params[:idid] == "admin" && params[:password] == "ep1234"
      session[:admin] = "admin"
      redirect_to :action => "list"
    else

      redirect_to :back
    end


  end

  def delete_photo
    photo = Photo.find(params[:id])
    photo.delete
    redirect_to :back

  end

  def delete

    company = Company.find(params[:id])
    company.destroy
    
    redirect_to :back

  end

  def list
    @companies = Company.all
  end

  def photo_add

      photo = Photo.new
      photo.company_id = params[:id]
      photo.link_url = params[:link_url]

      if params[:file] != nil
        photo.file_name = SecureRandom.hex(5) + params[:file].original_filename[-5..-1]
        f = File.open(Rails.root.join("public", "images", "gallery", photo.file_name), "wb")
        f.write(params[:file].read)
        f.close
        photo.save
      end

    redirect_to :back

  end

  def edit_process

    company = Company.find(params[:id])

    company.title = params[:title]
    company.content = params[:content]
    company.subtitle = params[:subtitle]
    company.address = params[:address]
    company.phone = params[:phone]
    company.homepage = params[:homepage]
    company.shopping = params[:shopping]
    company.latitude = params[:latitude]
    company.longitude = params[:longitude]
  
    if params[:big_image] != nil
      company.big_image = SecureRandom.hex(5) + params[:big_image].original_filename[-5..-1]
      big_image = File.open(Rails.root.join("public", "images", "company", company.big_image), "wb")
      big_image.write(params[:big_image].read)
      big_image.close
    end

    if params[:thumbnail_image] != nil
      company.thumbnail_image = SecureRandom.hex(5) + params[:thumbnail_image].original_filename[-5..-1]
      thumbnail_image = File.open(Rails.root.join("public", "images", "company", company.thumbnail_image), "wb")
      thumbnail_image.write(params[:thumbnail_image].read)
      thumbnail_image.close
    end
    if params[:portfolio] != nil
      company.portfolio = SecureRandom.hex(5) + params[:portfolio].original_filename[-5..-1]
        portfolio = File.open(Rails.root.join("public", "portfolio", company.portfolio), "wb")
        portfolio.write(params[:portfolio].read)
        portfolio.close
    end

    company.save

    redirect_to :back

  end


  def change_photo
      photo = Photo.find(params[:id])
      photo.link_url = params[:link_url]
    if params[:file] != nil
      photo.file_name = SecureRandom.hex(5) + params[:file].original_filename[-5..-1]
      f = File.open(Rails.root.join("public", "images", "gallery", photo.file_name), "wb")
      f.write(params[:file].read)
      f.close
    end

    photo.save
   
    redirect_to :back

  end

  def new_info
    company = Company.new
    company.title = params[:title]
    company.content = params[:content]
    company.subtitle = params[:subtitle]
    company.address = params[:address]
    company.phone = params[:phone]
    company.homepage = params[:homepage]
    company.shopping = params[:shopping]

    if params[:big_image] != nil
      company.big_image = SecureRandom.hex(5) + params[:big_image].original_filename[-5..-1]
    end
    if params[:thumbnail_image] != nil
      company.thumbnail_image = SecureRandom.hex(5) + params[:thumbnail_image].original_filename[-5..-1]
    end
    if params[:portfolio] != nil
      company.portfolio = SecureRandom.hex(5) + params[:portfolio].original_filename[-5..-1]
    end

    if company.save
      if params[:big_image] != nil
        big_image = File.open(Rails.root.join("public", "images", "company", company.big_image), "wb")
        big_image.write(params[:big_image].read)
        big_image.close
      end

      if params[:thumbnail_image] != nil
        thumbnail_image = File.open(Rails.root.join("public", "images", "company", company.thumbnail_image), "wb")
        thumbnail_image.write(params[:thumbnail_image].read)
        thumbnail_image.close
      end
      if params[:portfolio] != nil
        portfolio = File.open(Rails.root.join("public", "portfolio", company.portfolio), "wb")
        portfolio.write(params[:portfolio].read)
        portfolio.close
      end
    end

    redirect_to :action => "edit",
                :id => company.id
  end

  def edit
    @company = Company.find(params[:id])

  end

end
