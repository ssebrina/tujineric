class AddPhotoUrlToHouses < ActiveRecord::Migration[5.2]
  def change
    add_column :houses, :photo_url, :string
  end
end
