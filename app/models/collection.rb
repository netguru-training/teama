class Collection < ActiveRecord::Base
  include ActiveModel::Validations
  belongs_to :user
  belongs_to :board_game

  validates_with CollectionValidator
end

