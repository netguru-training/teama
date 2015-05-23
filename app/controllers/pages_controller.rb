class PagesController < ApplicationController
  def home
    @board_games = BoardGame.all
  end
end
