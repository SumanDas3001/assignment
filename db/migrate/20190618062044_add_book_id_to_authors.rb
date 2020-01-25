class AddBookIdToAuthors < ActiveRecord::Migration[5.2]
  def change
    add_column :authors, :book_id, :integer
  end
end
