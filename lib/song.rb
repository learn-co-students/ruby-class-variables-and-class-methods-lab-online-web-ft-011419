class Song 
  
  attr_accessor :name, :artist, :genre
  
   @@count = 0
   @@genres = []
   @@artists = []
   
  def intialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
  end  

  def self.new(name, artist, genre)
    
  end
  
  def self.artists 
    @@artists.uniq
  end  
  
  def self.genres
    @@genres = genre 
  end
  
  def self.count
    @@count
  end  
  
  def self.genres 
    #@genre = [] unless @genre
    #genre << genre
  end  
  
  def self.artists
    
  end  
end  



