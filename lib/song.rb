class Song 
  
 attr_accessor :name, :artist, :genre 
  
  @@count = 0

  def intialize
    @name = name
    @artist = artist
    @genre = genre
    @@count +=1
    @@genres << genre
    @@artists << artist
  end  
  
  def new(name, artist, genre)
    
  end 
  
  
    
end  