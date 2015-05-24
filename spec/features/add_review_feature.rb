require 'rails_helper'

describe 'write review process', :type => :feature do
  let!(:user) { create(:user) }
  let!(:board_game) { create(:board_game) }

  it 'writes review' do
    login_as(user, :scope => :user)
    visit board_game_path(board_game)
    within('#new_review') do
      fill_in 'review_content', :with => 'My review'
      fill_in 'review_rating', :with => 3.0
    end
    click_on 'Add review'
    expect(page).to have_content 'My review'
  end
end
