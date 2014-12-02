class WelcomeController < ApplicationController
  def about
  end

  def index
    if current_user 
      return redirect_to todos_path
    end
  end
end
