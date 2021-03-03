require 'pry'
class Artist
    attr_accessor :name, :genre
    @@all =[]

    def initialize(name)
        @name = name
        save
    end

    def save
        @@all << self
    end

    def self.all
        @@all
    end

    def new_song(name, genre)
        Song.new(name, self, genre)
        # binding.pry
    end

    def songs #returns all songs associated with that artist
        Song.all.select {|song| song.artist == self}
    end

    def genres #has mant genres through songs
        songs.map{|song| song.genre}
    end

end
