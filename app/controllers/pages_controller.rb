class PagesController < ApplicationController
  def home
    @board_games = BoardGame.all
    @users = User.all
  end
end
