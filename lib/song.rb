require 'pry'

class Song
    # Class Variables
    @@count = 0
    @@artists = []
    @@genres = []

    # Instance Variables
    attr_accessor :name, :artist, :genre

    # Initialize method
    def initialize(name, artist, genre)
        self.name = name
        self.artist = artist
        self.genre = genre

        @@count+=1
        @@artists << artist
        @@genres << genre
    end

    # Class Methods
    def self.count
        @@count
    end

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        @@genres.tally
        # genre_hash = {}
        # @@genres.each do |genre|
        #     if genre_hash.include? genre
        #         @@genre_hash[genre] += 1
        #     else
        #         @@genres[genre]
        #     end
        # end
        # genre_hash
    end

    def self.artist_count
        @@artists.tally
    end

end
ninety_nine_problems = Song.new("99 Problems", "Jay-Z", "rap")
lucifer = Song.new("Lucifer", "Jay-Z", "rap")
hit_me = Song.new('hit me baby one more time', 'Brittany Spears', 'pop')
# binding.pry
