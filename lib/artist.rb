class Artist

attr_reader :name

attr_accessor :songs

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
  song = Song.new(songname, self, genre)
end

def songs
  Song.all.collect {|x| x.artist == self}
end

end
