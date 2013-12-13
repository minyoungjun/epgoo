class Photo < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :company
end
