class  Admin::DepartmentinfoController < Admin::BaseController
  def index
    @article = Department.all
  end

  def new
    @department = Department.new
  end

  def create
    @article = Department.new(article_params)
    @article.save
    index
    render 'index'
  end
  def destroy
    @tcl = Department.find(params[:id])
    @tcl.destroy
    index
    render :index

  end
  def update
    @up = Department.find(params[:id])
    @up.update(article_params)
    index
    render 'index'
  end
  def edit
    @up = Department.find(params[:id])
  end

  def article_params
    params.require(:department).permit(:position)
  end

end
