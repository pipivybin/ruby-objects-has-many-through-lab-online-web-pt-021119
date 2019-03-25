class Genre

attr_accessor :name, :genre, :artist

@@all = []

def initialize(name)
  @name = name
  @@all << self
end

def self.all
  @@all
end

def songs
  Song.all.select {|x| x.genre == self}
end


def artists
  songs.collect {|x| x.genre}
end

end
