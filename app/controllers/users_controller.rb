class UsersController < ApplicationController
  def show
       @user = User.find(params[:id])
       @posts = @user.posts.order("created_at DESC")
end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    if @user.save
      redirect_to root_url, :notice => "Signed up!"
    else
      render "new"
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end
