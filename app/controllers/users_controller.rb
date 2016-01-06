class UsersController < ApplicationController
  def create
    params.permit!
    @user = User.new(params[:user])
    if @user.save
        session['loginedUser'] = @user
        redirect_to :controller=>'books',:action=>'index'
    else
        redirect_to :controller=>'users',:action=>'new'
    end
  end

  def new
    @user = User.new
  end
end
