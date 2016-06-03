class Admin::StaffinfoController < Admin::BaseController
  def index
    @employee_info = EmployeeInfo.all
  end

  def new
    @article = EmployeeInfo.new
  end

  def create
    @article = EmployeeInfo.new(article_params)
    @article.save
    index
    render 'index'
  end
  def destroy
    @employee_info = EmployeeInfo.find(params[:id])
    @employee_info.destroy
    index
    render :index

  end
  def update
    @employee_info = EmployeeInfo.find(params[:id])
    @employee_info.update(article_params)
    index
    render 'index'
  end
  def edit
    @employee_info = EmployeeInfo.find(params[:id])
  end
  def show

  end

  def article_params
    params.require(:employee_infon).permit(:position)
  end

end
