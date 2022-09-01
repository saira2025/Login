class HomeController < ApplicationController
  def index
    def index
      if current_admin_user
       @email = current_admin_user.email
      else
       redirect_to new_admin_user_session_path, notice: 'You have successfully logged out!'
      end
    end
  end
end
