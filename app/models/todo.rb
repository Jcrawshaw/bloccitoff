class Todo < ActiveRecord::Base
  belongs_to :user
  

  def countdown
    self.created_at+1.week
  end

end
