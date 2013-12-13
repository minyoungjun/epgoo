class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.integer :company_id
      t.string  :file_name
      t.string  :link_url
      t.string  :content
      t.timestamps
    end
  end
end
