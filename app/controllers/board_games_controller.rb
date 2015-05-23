class BoardGamesController < ApplicationController
  expose(:board_game, attributes: :board_game_params)
  expose(:board_games)
  expose(:reviews, ancestor: :board_game)
  expose(:review) { Review.new }
  expose(:comment) { Comment.new }
  expose(:user, ancestor: :board_game)

  def add_to_collection
    current_user.collections.create(board_game: board_game)
    redirect_to :back, notice: 'Game added to user.'
  end

  private

  def board_game_params
    params.require(:board_game).permit(:name, :description, :user_id, :board_game_id)
  end
end
