class Actor

    attr_reader :name, :movie, :review
    @@all = []

    def initialize name, movie, review
        @name = name
        @movie = movie
        @review = review
        @@all << self
    end

    def self.all
        @@all
    end

end