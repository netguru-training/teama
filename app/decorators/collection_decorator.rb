class BoardGameDecorator < Draper::Decorator
  delegate_all

  def edit_link(current_user)
    h.link_to('Edit', edit_board_game_path(object)) if object.collections.any? { |col| col.user_id == current_user.id }
  end

  def add_link(current_user, game)
    h.link_to('Add', board_game_collections_path(game)) if board_games_ids.include?(game.id)
  end

  private

  def board_games_ids
    @ids ||= current_user.collections.map(&:board_game_id)
  end
end
