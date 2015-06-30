class LinksController<ApplicationController
  def index
    @links = Link.all
    # @user_links =
  end

  def show
    @link = Link.find(params[:id])
    @links_comments = @link.comments
  end

  private

  def link_params
    params.require(:link).permit(:link, :title, :point)
  end

end
