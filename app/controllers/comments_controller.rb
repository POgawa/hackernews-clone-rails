class CommentsController < ApplicationController



  def index
    @comments = Comment.all
    @user = self.current_user
  end

  def show
    @comments = Comment.find(params[:id])
  end

  def new
    @comment = Comment.new
    render :new
  end

  def create
    @comment = Comment.new(list_params)
    if @comment.save
      redirect_to  lists_path #listed in rake route as lists under prefix
    else
      render :new
    end
  end

  def edit
    @comment = Comment.find(params[:id])
    render :edit
  end

  def update
    @comment = Comment.find(params[:id])
    if @comment.update(list_params)
      redirect_to lists_path
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
  def list_params
    params.require(:comment).permit(:title, :description)
  end












end
