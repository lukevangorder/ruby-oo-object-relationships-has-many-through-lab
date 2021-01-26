class Artist
    attr_accessor :name
    @@all = []
    def initialize(name)
        @name = name
        @songs = []
        @@all.push(self)
    end
    def self.all
        @@all
    end
    def songs
        @songs = []
        Song.all.each do |song|
            if song.artist == self
                @songs.push(song)
            end
        end
        @songs
    end
    def genres
        @genres = []
        Song.all.each do |song|
            if song.artist == self
                @genres.push(song.genre)
            end
        end
        @genres
    end
    def new_song(name, genre)
        Song.new(name, self, genre)
    end
end