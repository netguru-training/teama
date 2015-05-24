class BoardGame < ActiveRecord::Base
  has_many :collections
  has_many :users, through: :collections
  has_many :reviews

  after_commit :average_rating

  def average_rating
    self.reviews.average(:rating).to_f
  end

  scope :highest_rated, -> { joins(:reviews).select('board_games.id, avg(reviews.rating) as average_rating').group('board_games.id').order('average_rating DESC') }
end
