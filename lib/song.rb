class Song
  attr_accessor :genre, :name, :artist
  @@artists = []
  @@genres = []
  @@count = 0
  @@artist_count = {}
  @@genre_count = {}
  def initialize(name, artist, genre)
    @artist = artist
    @name = name
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
    @@artist_count[artist] ||= 0
    @@genre_count[genre] ||= 0
    @@artist_count[artist] += 1
    @@genre_count[genre] += 1

  end
  def self.count
    @@count
  end
  def self.artist_count
    @@artist_count
  end
  def self.genre_count
    @@genre_count
  end
  def self.genres
    @@genres.uniq
  end
  def self.artists
    @@artists.uniq
  end
end
