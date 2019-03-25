class Genre

attr_accessor :name, :songs, artists

@@all

def initialize
  @@all << self
end

def self.all
  @@all
end

end
