class Song
  @@count = 0 
  @@artists = []
  @@genres = []
  def initialize(name, artist, genre)
    @@artists << artist
    @name = name
    @artist = artist
    @genre = genre
    @@genres << genre
    @@count += 1 
  end
  attr_accessor :name, :artist, :genre
  def self.genre_count
    genre_hash = {}
    @@genres.each do |gen|
      if genre_hash.has_key?(gen)
        genre_hash[gen] += 1
      else 
        genre_hash[gen] = 1
      end
    end
    return genre_hash
  end
  def self.artist_count
    artist_hash = {}
    @@artists.each do |gen|
      if artist_hash.has_key?(gen)
        artist_hash[gen] += 1
      else 
        artist_hash[gen] = 1
      end
    end
    return artist_hash
  end
  def self.artists 
    artist_arr = []
    @@artists.each do |art|
      if !artist_arr.include?(art)
        artist_arr << art
      end
    end
    return artist_arr
  end
  def self.genres 
    genres_arr = []
    @@genres.each do |art|
      if !genres_arr.include?(art)
        genres_arr << art
      end
    end
    return genres_arr
  end
  def self.count
    return @@count
  end
end