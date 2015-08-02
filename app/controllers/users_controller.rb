class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to action: :index, notice: 'User was successfully created.'
    else
      render :new
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.lock_access!
    redirect_to action: :index,
                notice: 'User account was successfully disabled.'
  end

  private

  def user_params
    params.require(:user).permit(:email, :password)
  end
end
