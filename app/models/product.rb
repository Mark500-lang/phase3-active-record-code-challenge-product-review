class Product < ActiveRecord::Base
    has_many :reviews
    has_many :users, through: :reviews

    def leave_review(user, star_rating, comment)

    end

    def print_all_reviews
        self.reviews.map do |r|
            puts "Review for #{self.name} by #{self.users.find(r.user_id).name}: #{r.star_rating}. #{r.comment}"
        end
    end

    def average_rating
        rating = self.reviews.map {|r| r.star_rating}
        rating.sum(0.0) / rating.size
    end
end