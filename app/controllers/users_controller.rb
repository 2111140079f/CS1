class UsersController < ApplicationController
  def main
    if session[:login_uid] != nil
      render 'main'
    else
      render "login"
    end
  end

  def login
    uid = params[:uid]
    password = params[:password]

    if uid == 'kindai' && password == 'sanriko'
      session[:login_uid] = uid
      redirect_to "/"
    else
      render 'error'
    end
  end
end
