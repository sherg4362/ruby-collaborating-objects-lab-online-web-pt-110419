require 'pry'
class Artist
  attr_accessor :name
  
  @@all = [] # Store all artist instances in this variable
  
  def initialize(name)
    @name = name
    
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def add_song(song)
    song.artist = self
    #binding.pry
  end
  
  def songs
    puts Song.all.select {|song| song.artist == self}
  end
  
  def self.find_or_create_by_name(artist_name)
    artist = @@all.find {|artist| artist.name == artist_name}
    if artist
      artist
    else
      self.new(artist_name)
    end
  end
  
  def print_songs
    self.name
    binding.pry
  end
  
end