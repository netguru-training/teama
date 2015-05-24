class CommentsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]
  expose(:comment, attributes: :comment_params)
  expose(:review)
  # expose(:board_game)

  def new
  end

  def create
    comment.user = current_user
    comment.review = review
    if comment.save
      redirect_to board_game_path(review.board_game)
    else
      render :new
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:content)
  end
end
