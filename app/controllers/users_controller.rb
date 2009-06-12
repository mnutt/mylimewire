class UsersController < ApplicationController
  protect_from_forgery :except => :create

  def create
    port     = params[:port]
    username = params[:username]
    ip       = params[:ip]
    secret   = params[:secret]

    @user = User.authenticate(username, secret) || User.new(:username => username, :secret => secret)
    @user.ip = ip
    @user.port = port
    @user.save!
  end

  def show
    @user = User.find_by_username(params[:id]) or raise "No user found"
  end

  def index
  end

end
