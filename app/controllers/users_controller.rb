class UsersController < ApplicationController
  def index
  end
  
  def new
    @user = User.new
  end
  
  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)    # Not the final implementation!
    if @user.save
      flash[:success] = "Welcome to my Microblogging platform!"
      redirect_to @user
    else
      render 'new'
    end
  end
  
  def edit
  end
  
  def update
  end

  def destroy
  end

  def user_params
    params.require(:user).permit(:name, :email, 
                      :password, :password_confirmation)
  end

end
