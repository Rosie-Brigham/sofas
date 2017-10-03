class Song < ActiveRecord::Base
	has_one :video
	belongs_to :artist
	belongs_to :city

	# paginates_per 50
end