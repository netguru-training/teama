class BoardGamesController < ApplicationController
  expose(:board_game)

  private
  def board_game_params
    params.require(:board_game).permit(:name, :description)
  end
end
