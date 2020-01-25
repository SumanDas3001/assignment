class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :book_name
      t.text :short_description
      t.text :long_description
      t.string :book_chapter
      t.datetime :publication_date
      t.string :genre

      t.timestamps
    end
  end
end
