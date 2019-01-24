class Song 
  
  attr_accessor :name, :artist, :genre
  
   @@count = 0
   @@genres = []
   @@artists = []
   
  def intialize
    @name = name
    @artist = artist
      @@artists << artist
    @genre = genre
      @@genres << genre
    @@count += 1
  end  
  
  def self.new(name, artist, genre)
    
  end
  
  def name
     @name = name
  end  
  
  def self.artist 
    @artist = artist
  end  
  
  def self.genre
    @genre = genre 
  end
  
  def self.count
    
  end  
  
  def self.genres 
    #@genre = [] unless @genre
    #genre << genre
  end  
  
  def self.artists
    
  end  
  
  def self.genre_count
  
  end
  
  def self.artist_count 
  
  end  
  

end  



