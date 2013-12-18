class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string  :title
      t.string  :subtitle
      t.text  :content
      t.string  :longitude
      t.string  :latitude
      t.string  :big_image
      t.string  :thumbnail_image
      t.string  :logo_image
      t.string  :homepage
      t.string  :shopping
      t.string  :address
      t.string  :phone
      t.string  :portfolio
      t.timestamps
    end
  end
end
