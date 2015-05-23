class ReviewsController < ApplicationController
  expose(:review, attributes: :review_params)
  expose(:board_game)

  def new
  end

  def create
    review.user = current_user
    review.board_game = board_game
    if review.save
      redirect_to board_game_path(board_game)
    else
      render :new
    end
  end

  private
  def review_params
    params.require(:review).permit(:content)
  end
end
