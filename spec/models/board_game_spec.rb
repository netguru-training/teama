require 'rails_helper'

describe BoardGame do
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:description) }

  describe '#average rating' do
    let(:user) { create(:user) }
    let(:board_game) { create(:board_game) }
    let(:review1) { create(:review, rating: 2) }
    let(:review2) { create(:review, rating: 3) }

    before do
      board_game.reviews << [review1, review2]
    end

    it 'calculates average rating' do
      expect(board_game.average_rating).to eq 2.5
    end
  end
end
