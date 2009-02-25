class UsersController < ApplicationController
  def create
    port   = params[:port]
    host   = params[:host]
    ip     = params[:ip]
    secret = params[:secret]

    @user = User.authenticate(host, secret) or raise "Already taken"
    @user.update_attribute(:ip => ip, :port => port)
  end

  def show
    @user = User.find_by_host(params[:id]) or raise "No user found"
  end

end
