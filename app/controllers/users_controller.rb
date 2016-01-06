class UsersController < ApplicationController
  def create
    print "user: #{params[:user]}"
    params.permit!
    @user = User.new(params[:user])
    if params[:user]["password"] == params[:user]["password_confirmation"] 
      if @user.save
         flash[:notice] = '成功注册！'  
         session['loginedUser'] = @user
         redirect_to :controller=>'layouts',:action=>'application'
      else
         redirect_to :controller=>'users',:action=>'new'
      end
    else
        flash[:notice] = '两次输入的密码不相同'
        redirect_to :controller=>'users',:action=>'new'
    end
  end

  def new
    @user = User.new
  end
end
