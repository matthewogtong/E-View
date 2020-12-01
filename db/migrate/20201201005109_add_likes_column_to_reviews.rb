class AddLikesColumnToReviews < ActiveRecord::Migration[6.0]
  def change
    add_column :reviews, :likes, :integer
  end
end
