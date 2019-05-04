class SessionsController < ApplicationController
 
  def new
  end

  def show
    check_current_user
    @username = current_user
  end

  def create
    if (!params[:name]) || (params[:name].strip.length == 0)
      redirect_to new_session_path
    else
      session[:name] = params[:name]
      redirect_to root_path
    end
  end

  def destroy
    session[:name] = nil
    redirect_to root_path
  end

  private

  def check_current_user
    if !current_user
      redirect_to new_session_path
    end
  end
end
