class CollectionValidator < ActiveModel::Validator
  def validate(record)
    ids = record.user.collections.map(&:id)
    if ids.includes?(record.id)
      record.errors[:base] << 'You already added this game.'
      return false
    end
  end
end
