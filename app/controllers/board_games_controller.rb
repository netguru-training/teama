class BoardGamesController < ApplicationController
  def index
    @board_games = BoardGame.all
  end
end
