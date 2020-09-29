class Song

  attr_reader :artist
  attr_accessor :genre
  @@all = []

  def initialize(title, artist, genre)
    @title = title
    @artist = artist
    @genre = genre
    @@all << self
  end

  def self.all
    @@all
  end
end 