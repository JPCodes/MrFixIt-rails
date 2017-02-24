require 'rails_helper'

describe Job do
  it { should validate_presence_of :title }
  it { should validate_presence_of :description }

  it 'Toggles a jobs active state to true when false' do
    job = FactoryGirl.create(:job)
    job.toggle_job
    expect(job.active_job).to(eq(true))
  end

  it 'Toggles a jobs active state to false when true' do
    job = FactoryGirl.create(:job)
    job.active_job = true
    job.toggle_job
    expect(job.active_job).to(eq(false))
  end

end
