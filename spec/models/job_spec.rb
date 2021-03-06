require 'rails_helper'

describe Job do
  it { should validate_presence_of :title }
  it { should validate_presence_of :description }

  describe('Job#toggle_job') do
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

  describe('Job#complete_job') do
    it 'Changes a jobs complete state to true' do
      job = FactoryGirl.create(:job)
      job.complete_job
      expect(job.completed).to(eq(true))
    end
  end

end
