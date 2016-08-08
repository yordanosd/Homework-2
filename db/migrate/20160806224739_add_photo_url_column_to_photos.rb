class AddPhotoUrlColumnToPhotos < ActiveRecord::Migration[5.0]
  def change
    add_column :photos, :photo_url, :string, :null => false
  end
end
