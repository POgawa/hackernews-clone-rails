class CommentsController < ApplicationController



  def index
    @comments = Comment.all
    @users = User.all
    @user = self.current_user
  end

  def show
    @comments = Comment.find(params[:id])

  end

  def new
    @comment = Comment.new
  end

  def create
    @user = User.find(params[:user_id])
    @comment = @user.comments.new(comment_params)
    if @comment.save
      redirect_to  root_path #commented in rake route as comments under prefix
    else
      render :new
    end
  end

  def edit
    @comment = Comment.find(params[:id])
  end

  def update
    @comment = Comment.find(params[:id])
    if @comment.update(comment_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to root_path
  end

  private
  def comment_params
    params.require(:comment).permit(:title, :description)
  end












end
