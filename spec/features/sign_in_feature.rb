require 'rails_helper'

describe 'sign in process', :type => :feature do
  let!(:user) { create(:user) }

  it 'signs me in' do
    visit '/users/sign_in'
    within('#new_user') do
      fill_in 'Email', :with => 'test@test.com'
      fill_in 'Password', :with => 'password'
    end
    click_button 'Log in'
    expect(page).to have_content 'Signed in successfully.'
  end
end
