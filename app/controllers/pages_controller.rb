class PagesController < ApplicationController
  expose(:best_games) { BoardGame.highest_rated }
  expose(:board_games)
  expose(:users)

  def home
  end
end
