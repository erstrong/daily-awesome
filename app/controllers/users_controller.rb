class UsersController < ApplicationController
  def show
  end

  def edit
  end

def user_params
  params.require(:user).permit(:name, :avatar)
end
end
