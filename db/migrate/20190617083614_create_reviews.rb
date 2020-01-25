class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.string :name
      t.string :rating
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
