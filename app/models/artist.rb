class Artist < ActiveRecord::Base
	has_many :songs
	has_many :videos, through: :songs

end