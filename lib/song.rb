require "pry"
class Song
  
  attr_accessor :name, :artist
  
def initialize(name)
  @name = name
end

def self.new_by_filename(file_name)
  artist, song_name = file_name.split(" - ")
  new_song = self.new(song_name)
  new_song.artist_name=(artist)
  
end

def self.artist_name=(name)
   self.artist = Artist.find_or_create_by_name(name)
   binding.pry
  
end
 
end