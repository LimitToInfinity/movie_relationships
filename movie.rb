class Movie

    attr_reader :name, :actor, :review
    @@all = []

    def initialize name, actor, review
        @name = name
        @actor = actor
        @review = review
        @@all << self
    end

    def self.all
        @@all
    end

    def reviews
        Review.all.select do |review|
            review.movie == self
        end
    end

    def actors_by_review
        self.reviews.map do |review|
            review.actor
        end
    end

    # def actors
    #     Actor.all.select do |actor|
    #         actor.movie == self
    #     end
    # end


end