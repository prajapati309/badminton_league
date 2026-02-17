# frozen_string_literal: true

# Controller to handle users display and creation.
# Shows users with their roles.
class UsersController < ApplicationController
  before_action :authorize_admin!

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to users_path, notice: 'User created successfully.'
    else
      render :new
    end
  end

  private

  def authorize_admin!
    redirect_to root_path, alert: 'Access denied.' unless current_user.admin?
  end

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :role)
  end
end
