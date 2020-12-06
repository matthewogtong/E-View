class Achievement < ApplicationRecord
    belongs_to :user
    has_many :reviews, through: :user


    def badges
        if self.user.reviews.count < 5
            self.badge = "You are Nothing"
            self.next_badge_achievement = "Youngling"
        elsif self.user.reviews.count >= 5 && self.user.reviews.count < 15
            self.badge = "Youngling"
            self.next_badge_achievement = "Padawan"
        elsif self.user.reviews.count >= 15 && self.user.reviews.count < 30
            self.badge = "Padawan"
            self.next_badge_achievement = "Knight"
        elsif self.user.reviews.count >= 30 && self.user.reviews.count < 50
            self.badge = "Knight"
            self.next_badge_achievement = "Jedi Master"
        elsif self.user.reviews.count >= 50 && self.user.reviews.count < 70
            self.badge = "Jedi Master"
            self.next_badge_achievement = "You are too experienced"
        end
    end

    # def reviews_for_next_badge
    # end


end #end of class