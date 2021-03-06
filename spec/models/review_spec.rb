require 'rails_helper'

describe Review do
  let(:review) { build(:review, rating: rating) }
  let(:rating) { 5 }

  describe 'validations' do
    let(:rating) { -1 }
    before do
      review.save
    end

    it 'validates rating range' do
      expect(review.errors.full_messages).to eq(["Rating must be greater than or equal to 1"])
    end

    it { should validate_presence_of(:content) }
    it { should belong_to(:user) }
    it { should belong_to(:board_game) }
  end
end
