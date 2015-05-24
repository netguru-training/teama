class Review < ActiveRecord::Base
  belongs_to :board_game
  belongs_to :user
  has_many :comments

  validates :rating, numericality: { only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 5 }
end
