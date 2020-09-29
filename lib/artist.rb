class Artist
  attr_accessor :name
  @@all = []
  
  def initialze(name)
    @@name = name
    @@all << self
  end
  
  def song
    Song.all.select {
    
  
  