require 'rails_helper'

describe 'Manage a Job process' do
  before do
    @user = FactoryGirl.create(:user)
    @worker = FactoryGirl.create(:worker)
    @job = FactoryGirl.create(:job, worker_id: @worker.id)
    login_as(@worker)
  end

  it 'will mark a job as complete', js: true do
    visit worker_path(@worker)
    click_link 'Mark this job as completed'
    expect(page).to_not have_content('Make this job inactive')
  end
end
