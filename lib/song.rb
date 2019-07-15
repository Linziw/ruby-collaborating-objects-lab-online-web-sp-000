require "pry"
class Song
  
  attr_accessor :name, :artist
  
def initialize(name)
  @name = name
end

def self.new_by_filename(file_name)
  artist, song = file_name.split(" - ")
  binding.pry
  
end
 
end