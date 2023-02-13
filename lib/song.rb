class Song
    attr_accessor :name, :artist, :genre
    
    @@count = 0
    @@artists = []
    @@genres = []

    def initialize name, artist, genre ,count=0
        @name = name
        @artist = artist
        @genre = genre
        @@count+=1
        @@artists << artist
        @@genres << genre
    end 

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
    #gets an array of genres, including repetitions
    #from this, create a hash with each genre as the key and the number of times 
    #its been used as the value
    #
    genre_hash = {}
    @@genres.each do |genre|
    genre_hash[genre] = @@genres.count(genre)
    end
    genre_hash
    end

    def self.artist_count
    artist_hash = {}
    @@artists.each do |artist|
    artist_hash[artist] = @@artists.count(artist)
        end
    artist_hash
    end
end

r1 = Song.new("Hot","Drake","Hip-hop")
puts Song.count
