class CollectionsController < ApplicationController
  expose(:collection)
  expose(:board_game)

  def create
    collection.user = current_user
    collection.board_game = board_game
    redirect_to :back, notice: 'Collection created.' if collection.save
  end

  def destroy
    collection.delete
    redirect_to :back, notice: 'Collection deleted.'
  end
end
