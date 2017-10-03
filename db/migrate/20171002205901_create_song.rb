class CreateSong < ActiveRecord::Migration
  def change
    create_table :songs do |t|
    	t.integer :artist_id
    	t.string :title
    	t.string :cached_slug
    	t.integer :city_id
    end
  end
end
