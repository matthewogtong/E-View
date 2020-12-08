class Achievement < ApplicationRecord
    belongs_to :user
    has_many :reviews, through: :user


    def badges
        if self.user.achievement.points < 5
            self.badge = "Boulder"
            self.next_badge_achievement = "Earth"
            self.save
        elsif self.user.achievement.points >= 5 && self.user.achievement.points < 15
            self.badge = "Earth"
            self.next_badge_achievement = "Rising"
            self.save
        elsif self.user.achievement.points >= 15 && self.user.achievement.points < 30
            self.badge = "Rising"
            self.next_badge_achievement = "Beacon"
            self.save
        elsif self.user.achievement.points >= 30 && self.user.achievement.points < 50
            self.badge = "Beacon"
            self.next_badge_achievement = "Tesla"
            self.save
        elsif self.user.achievement.points >= 50 && self.user.achievement.points < 70
            self.badge = "Tesla"
            self.next_badge_achievement = "You got 'em all. You are a true advocate for EVs. Thank you!"
            self.save
        end
        
    end

    # def reviews_for_next_badge
    # end


end #end of class