class CollectionValidator < ActiveModel::Validator
  def validate(record)
    ids = record.user.collections.map(&:board_game_id)
    if ids.include?(record.board_game_id)
      record.errors[:base] << 'You already added this game.'
      return false
    end
  end
end
