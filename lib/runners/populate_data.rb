require 'json'

class PopulateData
  def initialize
    file = File.read('lib/data/video_data.json')
    @data_hash = JSON.parse(file)
    populate
  end

  def populate
    @data_hash.each do |row|

      if row.count > 1 #welllll..... theres no much point in the ones iwht no data right?
      puts row
      puts "      "

        city = create_city(row["song"]["city"])
        artist = create_artist(row["song"]["artist"])
      # require'pry';binding.pry

        song = create_song(row["song"], artist, city)
        video = create_video(row["video_uid"], song)

      end
    end
  end


  def create_city(hash_data)
    if hash_data
      city = City.find_by(name: hash_data["title"])
      if !city
        city = City.new(name: hash_data["title"], cached_slug: hash_data["cached_slug"])
        city.save
      end
      city
    end
  end

  def create_artist(hash_data)
    if hash_data 
      artist = Artist.find_by(name: hash_data["title"])
      if !artist
        artist = Artist.new(name: hash_data["title"], cached_slug: hash_data["cached_slug"])
        artist.save
      end
      artist
    end
  end

  def create_video(hash_data, song)
    if hash_data
     video = Video.find_by(video_uid: hash_data)
      if !video
        video = Video.new(video_uid: hash_data)
      end
      song.present? ? video.song_id = song.id : false
      video.save
      video
    end
  end

  def create_song(hash_data, artist, city)
    if hash_data
      song = Song.find_by(title: hash_data["title"])
      if !song
        song = Song.new(title: hash_data["title"], cached_slug: hash_data["cached_slug"])
      end
      artist.present? ? song.artist_id = artist.id : false
      city.present? ? song.city_id = city.id : false
      song.save
      song
    end
  end

end


PopulateData.new.populate