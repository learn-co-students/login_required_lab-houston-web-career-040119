class SecretesController < ApplicationController
  def index
  end

  def login
  end

private

def require_login
  return head(:forbidden) unless session.include? :user_id
end

end
