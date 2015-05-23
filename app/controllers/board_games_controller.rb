class BoardGamesController < ApplicationController
  expose(:board_game)

  private
  def board_game_params
    params.require(:board_game).permit(:name, :description)
  end

  def add_to_collection
    bg = BoardGame.find(params[:id])
    current_user.collections.create(board_game: bg)
    redirect_to :back, notice: 'Game added to user.'
  end
end
