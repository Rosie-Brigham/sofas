class CreateVideo < ActiveRecord::Migration
  def change
    create_table :videos do |t|
    	t.integer :song_id
    	t.string :video_uid
    end
  end
end
