class LinksController<ApplicationController
  def index
    @links = Link.all
  end

  def show
    @link = Link.find(params[:id])
    @links_comments = @link.comments
  end

  def new
    @link = Link.new
  end

  def create
    if current_user
      @link = Link.new(link_params)
      @link.update(:user_id => current_user.id)
    else
      @link = Link.new(link_params)
    end
    if @link.save
      redirect_to links_path
    else
      render :new
    end
  end

  private

  def link_params
    params.require(:link).permit(:link, :title, :point)
  end

end
