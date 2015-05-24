class CollectionsController < ApplicationController
  expose(:collection)
  expose(:board_game)

  def create
    collection.user = current_user
    collection.board_game = board_game
    if collection.save
      redirect_to board_games_path, notice: 'Collection created.'
    else
      flash[:error] = collection.errors.full_messages
    end
  end

  def destroy
    collection.delete
    redirect_to :back, notice: 'Collection deleted.'
  end
end
