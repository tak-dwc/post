class UsersController < ApplicationController
  def index
    @users = User.find(params[:id])
  end

  def show
  end

  def edit
  end

  def update
  end
end
