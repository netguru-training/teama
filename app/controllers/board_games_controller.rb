class BoardGamesController < ApplicationController

  def add_to_collection
    bg = BoardGame.find(params[:id])
    current_user.collections.create(board_game: bg)
    redirect_to :back, notice: 'Game added to user.'
  end

end
