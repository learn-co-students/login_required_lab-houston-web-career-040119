class SecretsController < ApplicationController
  before_action :check_current_user

  def show
  end

  private

  def check_current_user
    if !current_user
      redirect_to new_session_path
    end
  end
end
