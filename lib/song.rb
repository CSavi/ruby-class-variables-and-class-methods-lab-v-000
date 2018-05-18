class Song
  
  @@count = 0 
  @@genres = []
  @@artists = []
  
  attr_accessor :name, :artist, :genre 
  
  def initialize(name, artist, genre)
    @name = name 
    @artist = artist 
    @genre = genre 
    @@count += 1
    @@genres 
  end 
  
  def self.count 
    @@count 
  end   
  
  def self.genres 
    @@genres.collect {|x| x.uniq}
  end   
  
end 

