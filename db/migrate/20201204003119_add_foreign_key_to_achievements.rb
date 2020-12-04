class AddForeignKeyToAchievements < ActiveRecord::Migration[6.0]
  def change
    add_column :achievements, :user_id, :integer
  end
end
