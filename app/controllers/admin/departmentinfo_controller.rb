class  Admin::DepartmentinfoController < Admin::BaseController
  def index
    @articles = Department.all
    @department = Department.new
  end

  def new
    @department = Department.new
  end

  def create
    @article = Department.new(article_params)
    if  @article.save
      redirect_to :action=>"index"
    else
      new
      render :new
    end
  end
  def destroy
    @tcl = Department.find(params[:id])
    @tcl.destroy
    redirect_to :action=>"index"

  end
  def update
    @up = Department.find(params[:id])
    @up.update(article_params)
    redirect_to :action=>"index"
  end
  def edit
    @up = Department.find(params[:id])
  end
  def show

  end
  def merge
    @departments = Department.all
    if request.post?
      selectname = params[:selectname]
      puts selectname
      selectinfo = params[:selectinfo]
      puts selectinfo
      EmployeeInfo.where(department_id:selectname).update(department_id:selectinfo)
      Department.find(selectname).destroy
      redirect_to :action => :index
    end
  end


  def article_params
    params.require(:department).permit(:positionName)
  end

end
