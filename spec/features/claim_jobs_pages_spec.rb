require 'rails_helper'

describe 'Create a Job process' do
  before do
    @user = FactoryGirl.create(:user)
    @worker = FactoryGirl.create(:worker)
    @job_unclaimed = FactoryGirl.create(:job)
    @job_claimed = FactoryGirl.create(:job, pending: true)
  end

  it 'will claim a Job as a worker', js: true do
    login_as(@worker)
    visit root_path
    click_link 'See All Jobs'
    click_link @job_unclaimed.title
    click_link 'click here to claim it now'
    expect(page).to have_content('You\'ve successfully claimed this job.')
  end

  it 'will disallow claiming of a claimed Job as a worker', js: true do
    login_as(@worker)
    visit job_path(@job_claimed)
    expect(page).to have_content('Someone has already claimed this job.')
  end

end
