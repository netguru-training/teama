class BoardGameDecorator < Draper::Decorator
  delegate_all

  def edit_link(current_user)
    h.link_to('Edit', edit_board_game_path(object)) if object.collections.any? { |col| col.user_id == current_user.id }
  end

end
