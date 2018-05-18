class Song
  
  @@count = 0 
  
    def self.count 
      @@count 
    end 
  
  @@genres = []
  
    def self.genres 
      @@genres.uniq!
    end 
    
    def self.genre_count    #Histogram   
      genre_count = {}       
      @@genres.each do |genre|  #iterate over @@genres array
        if genre_count[genre] 
          genre_count += 1
        else
          genre_count = 1  
        end  
      end   
      genre_count 
    end
  
  @@artists = []
  
    def self.artists
      @@artists.uniq!
    end   
    
  
  attr_accessor :name, :artist, :genre 
  
  def initialize(name, artist, genre)
    @name = name 
    @artist = artist 
    @genre = genre 
    @@count += 1
    @@genres << genre
    @@artists << artist
  end 
  
    
  
end 

