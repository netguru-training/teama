class Review < ActiveRecord::Base
  belongs_to :board_game
  belongs_to :user
  has_many :comments
end
