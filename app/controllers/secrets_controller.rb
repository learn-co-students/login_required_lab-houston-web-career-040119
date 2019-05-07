class SecretsController < ApplicationController

    def show 
        if current_user.blank?
            redirect_to new_session_path
        else
            render 'show'
        end
    end
end
