class Song
  
  @@count = 0
  @@artists = []
  @@genres = []
  attr_accessor :name, :artist, :genre
  
  def initialize(name,artist, genre)
    
    @@count += 1
    @name = name
    
    @artist = artist
    @@artists << @artist
    
    @genre = genre
    @@genres << @genre
    
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
    
    gcount = {}
    
    @@genres.each do |genre|
      
      if gcount[genre] == nil 
        
        gcount[genre] = 1
      
      else
        
        gcount[genre] += 1
        
      end
      
      
    end
    
    gcount
    
  end
  
  def self.artist_count
    
    acount = {}
    
    @@artists.each do |artist|
      
      if acount[artist] == nil 
        
        acount[artist] = 1
      
      else
        
        acount[artist] += 1
        
      end
      
      
    end
    
    acount
    
  end
  
end