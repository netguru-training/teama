require 'rails_helper'

describe BoardGame do
  let(:board_game) { create(:board_game) }

  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:description) }
end
