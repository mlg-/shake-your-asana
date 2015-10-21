require 'rails_helper'

feature 'user can view index of poses' do

  before(:each) do
    user = FactoryGirl.create(:user)

    visit new_user_session_path

    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password

    click_button 'Log in'
  end

  scenario 'user can see a list of poses' do
    downward_dog = FactoryGirl.create(:pose)

    visit poses_path

    expect(page).to have_content(downward_dog.english_name)
  end
end

