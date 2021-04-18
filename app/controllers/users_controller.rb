class UsersController < ApplicationController
  
  def show
    @user = User.find(params[:id])
    @book = Book.new
    @books = Book.all
  end
  
  def edit
    @user = User.find(params[:id])
  end
  
  def update
    
  end
  
  def index
    @users = User.all
    @book = Book.new
  end
  
  private
  def user_params
  	params.require(:user).permit(:name, :introduction, :profile_image)
  end

  
end
