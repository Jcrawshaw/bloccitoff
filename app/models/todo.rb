class Todo < ActiveRecord::Base
  belongs_to :user
  

  def expires_at
    self.created_at+1.week
  end

  def days_left
     expires_at.to_date - Date.today
  end
end
