class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @books = @user.books.page(params[:page]).reverse_order
  end
  
  def new
    @user = User.new
  end 

  def edit
  end

  def create
  end

  private
  def user_params
  params.require(:user).permit(:name, :image, :introduction)
  end

end
