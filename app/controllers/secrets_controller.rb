class SecretsController < SessionsController
  before_action :require_login
  def show
  end

  private

  def require_login
    if session[:name] == nil || session[:name].empty?
      redirect_to login_path
    end
  end
end
