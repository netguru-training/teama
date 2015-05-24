class BoardGameDecorator < Draper::Decorator
  delegate_all

  def add_link(game, current_user)
    h.button_to('Add', h.board_game_collections_path(game), method: :post) unless board_games_ids(current_user).include?(game.id)
  end

  private

  def board_games_ids(current_user)
    @ids ||= current_user.collections.map(&:board_game_id)
  end
end
