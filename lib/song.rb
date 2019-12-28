require 'pry'
class Song
  attr_accessor :name, :artist
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def self.new_by_filename(file)
    song_name = file.split(" - ")[1]
    artist_name = file.split(" - ")[0]
    song = self.new(song_name)
    song.artist = artist_name
    song
    #binding.pry
  end
  
  def artist_name= (artist_name)
      artist = Artist.find_or_create_by_name(artist_name)
      artist.add_song(artist.name)
      #binding.pry
  end
  
end