class AddRatingToReview < ActiveRecord::Migration
  def change
    add_column :reviews, :rating, :float, default: 1
  end
end
