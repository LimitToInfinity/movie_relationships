class Review

    attr_reader :rating, :movie, :actor
    @@all = []

    def initialize rating, movie, actor
        @rating = rating
        @movie = movie
        @actor = actor
        @@all << self
    end

    def self.all
        @@all
    end

end