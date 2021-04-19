class UsersController < ApplicationController

  def index
    @users = User.all
    @book = Book.new
    @user = current_user

  end
  
  def new
    @profile_image = ProfileImage.new
  end
  
  def create
    @profile_image = ProfileImage.new(profile_image_params)
    @profile_image.user_id = current_user.id
    @profile_image.save
    redirect_to user_path
  end

  def show
    @user = User.find(params[:id])
    @book = Book.new
    @post_books = @user.books.page(params[:page]).reverse_order
  end



  def edit
    @user = User.find(params[:id])
  end

  def update

  end



  private
  def user_params
  	params.require(:user).permit(:name, :introduction, :profile_image)
  end


end
