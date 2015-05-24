class PagesController < ApplicationController
  expose(:best_games) { BoardGame.highest_rated }
  expose(:board_games)
  expose(:users)
  expose(:latest_reviews) { Review.last(5) }

  def home
  end
end
