class Song < ActiveRecord::Base
	has_one :video
	belongs_to :artist
	belongs_to :city
end