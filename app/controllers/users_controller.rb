class UsersController < ApplicationController

  def home
  end

  def index
    @users = User.all
  end

  def onsearch
    @users = User.where(dispo: true)
  end

  def show
    @user = User.find(params[:id])
  end

  def dispo
    @user = User.find(params[:id])
    @user.dispo = !@user.dispo
    @user.save
    redirect_to user_path(@user)
  end
end
