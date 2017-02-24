require 'rails_helper'

describe 'Create a Job process' do
  before do
    @user = FactoryGirl.create(:user)
    @worker = FactoryGirl.create(:worker)
    @job = FactoryGirl.create(:job)
  end

  it 'will claim a Job as a worker', js: true do
    login_as(@worker)
    visit root_path
    click_link 'See All Jobs'
    click_link @job.title
    click_link 'click here to claim it now'
    expect(page).to have_content('You\'ve successfully claimed this job.')
  end


end
