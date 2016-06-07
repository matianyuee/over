class Admin::StaffinfoController < Admin::BaseController
  def index
    @employee_infos = EmployeeInfo.all
  end

  def new
    @article = EmployeeInfo.new
  end

  def create
    @article = EmployeeInfo.new(article_params)
    
    if @article.save
    index
    render 'index'
    else
      render :new
      end
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
    params.require(:employee_info).permit(:name,:gender,:birth_date,:marriage,:nation,:origin,:political_landscape,:physical_condition,:height,:weight,:contact_phone,:graduation_time,:_school,:major,:highest_degree,:id_card_number,:permanent_address,:live_address,:mailbox,:salary_expectation,:arrival_time)
  end

end
