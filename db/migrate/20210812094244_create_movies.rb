class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string :titel, null: false
      t.text :overview
      t.string :url
      t.float :rating

      t.timestamps
    end
  end
end
