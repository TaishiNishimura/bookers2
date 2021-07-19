class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @books = Book.where(user_id: @user.id)
  end

  def new
    @user = User.new
  end

  def edit
    @user = User.find(params[:id])
  end

  def create
  end

  def update
  @user = User.find(params[:id])
  @user.update(user_params)
  redirect_to user_path(@user.id)
  end

  private
  def user_params
  params.require(:user).permit(:name, :image, :introduction)
  end

end
