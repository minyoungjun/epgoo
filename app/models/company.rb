class Company < ActiveRecord::Base
   attr_accessible :title, :subtitle, :content, :thumbnail_image, :big_image, :homepage, :shopping
  has_many :photos
end
