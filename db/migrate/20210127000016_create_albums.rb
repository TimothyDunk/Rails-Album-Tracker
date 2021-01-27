class CreateAlbums < ActiveRecord::Migration[6.1]
  def change
    create_table :albums do |t|
      t.string :title
      t.string :artist
      t.integer :year
      t.text :description
      t.integer :rating

      t.timestamps
    end
  end
end
