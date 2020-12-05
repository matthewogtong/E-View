class CreateAchievements < ActiveRecord::Migration[6.0]
  def change
    create_table :achievements do |t|
      t.string :next_badge_achievement
      t.string :badge
      t.integer :points
    end
  end
end
