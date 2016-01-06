class HomeController < ApplicationController
  def login
  end

  def checkLogin
    @user = User.find_by_userid(params[:user][:userid])
    if @user != nil && @user[:password] == params[:user][:password]
        session['loginedUser'] = @user
        redirect_to :controller=>'books',:action=>'index'
    else
        session['loginedUser'] = nil
        redirect_to :controller=>'home',:action=>'login'
    end
  end

  def logout
    session['loginedUser'] = nil
    redirect_to :controller=>'books',:action=>'index'
  end
end
