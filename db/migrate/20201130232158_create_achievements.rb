class CreateAchievements < ActiveRecord::Migration[6.0]
  def change
    create_table :achievements do |t|
      t.string :next_badge_achievement
      t.string :next_point_achievement
      t.string :badges 
      t.integer :points 
    end
  end
end
