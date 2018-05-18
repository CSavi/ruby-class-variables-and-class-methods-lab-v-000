class Song
  
  @@count = 0 
  
    def self.count 
      @@count 
    end 
  
  @@genres = []
  
    def self.genres 
      @@genres.uniq!
    end 
    
    def self.genre_count
      genre_count_hash = {}
      genre_count_hash << genre.length  
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

