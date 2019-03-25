class Genre

attr_accessor :name, :genre

@@all = []

def initialize(name)
  @name = name
  @@all << self
end

def self.all
  @@all
end

def songs
  Song.all.collect {|x| x.genre == self}
end


def artists
  songs.artist
end

end
