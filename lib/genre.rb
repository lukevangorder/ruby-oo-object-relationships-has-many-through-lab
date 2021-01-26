class Genre
    attr_accessor :name
    @@all = []
    def initialize(name)
        @name = name
        @@all.push(self)
    end
    def self.all
        @@all
    end
    def songs
        @songs = []
        Song.all.each do |song|
            if song.genre == self
                @songs.push(song)
            end
        end
        @songs
    end
    def artists
        @artists = []
        Song.all.each do |song|
            if song.genre == self
                @artists.push(song.artist)
            end
        end
        @artists
    end
end