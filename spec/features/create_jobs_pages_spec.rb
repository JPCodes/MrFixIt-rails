require 'rails_helper'

describe 'Create a Job process' do
  it 'will add a Job', js: true do
    user = FactoryGirl.create(:user)
    login_as(user)
    visit root_path
    click_link 'Add Your Job'
    fill_in 'Title', :with => 'Lawn Mowing needed!'
    fill_in 'Description', :with => 'Please mow my lawn!'
    click_on 'Create Job'
    expect(page).to have_content('Lawn Mowing needed!')
  end

  it 'will fail to add a Job', js: true do
    user = FactoryGirl.create(:user)
    login_as(user)
    visit root_path
    click_link 'Add Your Job'
    click_on 'Create Job'
    expect(page).to have_content('errors')
  end
end
