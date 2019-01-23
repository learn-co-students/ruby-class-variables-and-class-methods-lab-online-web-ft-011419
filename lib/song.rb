class Song
  
  @@count = 0
  @@genres = []
  @@artists = []
  @@genre_count = {}
  @@artist_count = {}
  
  attr_reader :name, :artist, :genre
  
  def initialize(title, artist, genre)
    @name = title
    @artist = artist
    @@artists << artist
    @genre =  genre
    @@genres << genre
    @@count += 1
  end
  
  def self.count
    @@count
  end
  
  def self.genres
    @@genres.uniq
  end
  
  def self.artists
    @@artists.uniq
  end
  
  def self.genre_count
    @@genres.uniq.each do |type|
      @@genre_count[type] = @@genres.count(type)
    end
    @@genre_count
  end
  
  def self.artist_count
    @@artists.each do |band|
      if @@artist_count.has_key?(band) == true
        @@artist_count[band] += 1
      else
        @@artist_count[band] = 1
      end
    end
    @@artist_count
  end
    
end