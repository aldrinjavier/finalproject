class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :title
      t.decimal :price
      t.date :date_released
      t.string :duration
      t.integer :artist_id
      t.integer :genre_id
      t.integer :label_id
	  t.string :cover

      t.timestamps
    end
  end
end
