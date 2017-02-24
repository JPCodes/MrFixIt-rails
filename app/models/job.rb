class Job < ActiveRecord::Base
  validates :title, :description, :presence => true

  def toggle_job
    self.active_job = !self.active_job
    self.save
  end

  def complete_job
    self.completed = true
    self.save
  end
end
