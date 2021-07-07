class Song
  @@artists = [] 
  @@genres = []
  @@count = 0
  attr_accessor :name, :artist, :genre
  


  def initialize(name, artist, genre)
    @name = name
    @artist = artist 
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
  end

  # def self.compile_artists(artist) 
  #   artist.each do |name_of_artist|
  #     @@artist << name_of_artist
  #   end
  #   @@artist 
  # end

    
  def self.artists
    @@artists.uniq
  end
  
  def self.genres
    @@genres.uniq
  end

  def self.artist_count
    artist_count = {}
  @@artists.each do |artist|
    artist_count[artist] ||= 0
    artist_count[artist] += 1
  end
  artist_count
  end
  
    def self.genre_count
    genre_count = {}
  @@genres.each do |genre|
    genre_count[genre] ||= 0
    genre_count[genre] += 1
  end
  genre_count
  end
  
  test=Song.new("Lucifer", "Jay-Z", "rap" )
  test.name
  puts "TESTING"
      puts "artist =  #{@@artists}"
      test.artist
      Song.class_variable_get(:@@artists)



  def self.count
     @@count
  end
end
