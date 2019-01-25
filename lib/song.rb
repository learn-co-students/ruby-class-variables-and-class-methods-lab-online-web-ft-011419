class Song
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@genres = []
  @@artists = []
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @@artists << artist
    @genre = genre
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
    tmp = {}
    @@genres.each do |genre|
      if tmp.has_key?(genre)
        tmp[genre] += 1
      else
        tmp[genre] = 1
      end
    end
    tmp
    
  end
  
  def self.artist_count
    
    tmp = {}
      @@artists.each do |artist|
        if tmp.has_key?(artist)
          tmp[artist] += 1
        else
          tmp[artist] = 1
        end
      end
      tmp
      
    end
end