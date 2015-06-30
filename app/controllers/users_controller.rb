class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @user_comments = @user.comments
  end

  def new
    @user = User.new
    render :new
  end

  def create
    @user = User.new(list_params)
    if @user.save
      redirect_to  lists_path #listed in rake route as lists under prefix
    else
      render :new
    end
  end

  def edit
    @user = User.find(params[:id])
    render :edit
  end

  def update
    @user = User.find(params[:id])
    if @user.update(list_params)
      redirect_to lists_path
    else
      render :edit
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to root_path
  end

  private
  def list_params
    params.require(:user).permit(:title, :description)
  end












end
