class Collection < ActiveRecord::Base
  belongs_to :user
  belongs_to :board_game
end
