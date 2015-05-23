class ReviewsController < ApplicationController
  expose(:review, attributes: :review_params)
  expose(:board_game)

  def new
  end

  def create
    review.user = current_user
    if review.save
      redirect_to board_game_path(board_game)
    else
      render :new
    end
  end

  private
  def review_params
    params.require(:review).permit(:content, :board_game_id)
  end
end
