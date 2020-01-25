class AddProfilePicToAuthors < ActiveRecord::Migration[5.2]
  def change
    add_attachment :authors, :profile_pic
  end
end
