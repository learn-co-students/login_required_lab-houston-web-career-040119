class SessionsController < ApplicationController
    def create
        session[:name] = params[:name]
        if current_user.blank?
            redirect_to new_session_path
        else
        end
    end

    def destroy
        if current_user.blank?
        else
            session.delete(:name)
        end
    end
end
