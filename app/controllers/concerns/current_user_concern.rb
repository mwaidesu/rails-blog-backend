module CurrentUserConcern
  extend ActiveSupport::Concern

  included do
    before_action :set_current_user
  end

  def set_current_user
    @current_user = User.find(session[:user_id]) if session[:user_id]
  end

  def logged_in
    if @current_user
      render json: {
        logged_in: true,
        user: curent_user
      }
    else
      render json: {
        logged_in: false
      }
    end
  end

  def logout
    reset_session
    render json:{ status:200, logged_out: true}
  end
end
