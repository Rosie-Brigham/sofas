class Video < ActiveRecord::Base
	belongs_to :song
	# has_one :artist, through: :song
end