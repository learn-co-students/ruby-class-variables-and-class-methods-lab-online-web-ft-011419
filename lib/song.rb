require 'pry'

class Song
  @@count = 0
  @@genres = []
@@artists = []
attr_accessor :name , :artist , :genre

  def initialize(name, artist, genre)

    @name = name
    @artist = artist
    @genre = genre
    @@count  += 1
    @@genres << genre
    @@artists << artist
  end
 def self.count
   @@count
 end
 def self.artists
   @@artists.uniq
 end
 def self.genres
   @@genres.uniq
 end

   def self.genre_count
     var = {}
    @@genres.each do |genre|
      #check if the key value pair is there if so incremnt by one if not just add once
      if    var[genre]
        var[genre] +=1
        else
        var[genre]= 1
      end
    end
    var
   end
   def self.artist_count
     var = {}
  @@artists.each do |artist|
      if  var[artist]
        var[artist] += 1
      else
        var[artist] = 1
      end
    end
    var
   end



end
