class Artist

attr_reader :name

@@all = []

def initialize(name)
  @name = name
  save
end

def self.all
  @@all
end

def save
  Artist.all << self
end

def new_song(songname, genre)
  song = Song.new(songname)
end

end
