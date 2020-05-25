class ApplicationController < ActionController::Base
  
  private

  def user_params
    params.require(:user).permit(:username, :email, :encrypted_password, :member_status)
  end

  def post_params
    params.require(:post).permit(:title, :text, :user_id)
  end
end
