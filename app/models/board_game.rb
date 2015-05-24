class BoardGame < ActiveRecord::Base
  has_many :collections
  has_many :users, through: :collections
  has_many :reviews

  after_commit :average_rating

  def average_rating
    self.reviews.average(:rating).to_f
  end
end
