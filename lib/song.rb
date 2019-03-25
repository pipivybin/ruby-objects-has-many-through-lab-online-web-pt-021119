class Song

attr_accessor :name, :artist, :genre

@@all = []

def initialize(name, artist, genre)
  @name = name
  @artist = artist
  @genre = genre
  save
end

def self.all

end


end
