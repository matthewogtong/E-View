class Car < ApplicationRecord
    has_many :reviews
    has_many :users, through: :reviews

    def make_plus_model
        "#{self.make} #{self.model}"
    end

end