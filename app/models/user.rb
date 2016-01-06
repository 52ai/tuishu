class User < ActiveRecord::Base
    validates_presence_of       :userid,  :message => "用户ID不能为空!"
    validates_length_of         :userid,  :minimum => 15,  :maximum => 15, :message => "请输入15位学号！"
    validates_presence_of       :password,  :message =>"密码不能为空!"   
    validates_length_of         :password,   :minimum => 6, :maximum => 15, :message=>"密码长度须为6到20位字母或数字! "      
    validates_presence_of       :password_confirmation,  :message =>"请再输入一次密码!"  
    validates_confirmation_of   :password,  :message => "两次密码不一致!"
end
