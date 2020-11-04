#require 'pry'
class Song
    attr_accessor :name, :artist
    @@all = []

    def initialize(name)
        @name = name
        @artist = artist
        save
    end
    #def artist
        #self.artist = artist
    #end
    def self.all
        @@all
    end
    def song_name 
   if self.artist
    song.name
   else
    nil
   end
end
    def self.new_by_filename(filename)
        #binding.pry
        split_name = filename.split(" - ")
        artist = Artist.find_or_create_by_name(split_name[0])
        song = self.new(split_name[1])
        song.artist = artist
        artist.add_song(song)
        song    
    end
def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
end
def save
    @@all << self
end

end
