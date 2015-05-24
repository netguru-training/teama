require 'rails_helper'

describe Comment do
  let(:comment) { create(:comment) }

  it { should validate_presence_of(:content) }
end
