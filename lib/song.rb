class Song
  attr_accessor :name, :genre, :artist
  @@count = 0
  @@artists ||= []
  @@genres ||= []
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count+=1
    @@artists << artist
    @@genres << genre
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq!
  end

  def self.genres
    @@genres.uniq!
  end

  def self.genre_count
    genres = {}
    count = 0
    @@genres.each do |k|
      if genres.key?(k) == false
         genres[k] = count + 1
       else
         genres[k] += 1
       end
end
genres
  end

  def self.artist_count
    artists = {}
    count = 0
    @@artists.each do |k|
      if artists.key?(k) == false
         artists[k] = count + 1
       else
         artists[k] += 1
       end
end
artists
  end


end
