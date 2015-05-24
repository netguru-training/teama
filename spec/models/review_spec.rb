require 'rails_helper'

describe Review do
  let(:review) { build(:review) }

  describe 'validations' do
    it 'validates rating range' do
      expect(review.save.errors).to eq([''])
    end
  end
end
