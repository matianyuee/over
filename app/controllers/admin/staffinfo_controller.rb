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
      redirect_to :action=>"index"
    else
      render :new
      end
  end
  def destroy
    @employee_info = EmployeeInfo.find(params[:id])
    @employee_info.destroy
    redirect_to :action=>"index"

  end
  def update
    @employee_info = EmployeeInfo.find(params[:id])
    @employee_info.update(article_params)
    redirect_to :action=>"index"
  end
  def edit
    @employee_info = EmployeeInfo.find(params[:id])
  end
  def show
    @employee_info = EmployeeInfo.find(params[:id])
  end

  def article_params
    work_experiences = [:start_and,:end_date,:work_unit,:post,:salary,:witness,:reasons_for_leaving,:telephone]
    params.require(:employee_info).permit(:name,:gender,:birth_date,:marriage,:nation,:origin,:political_landscape,:physical_condition,:height,:weight,:contact_phone,:graduation_time,:_school,:major,:highest_degree,:id_card_number,:permanent_address,:live_address,:mailbox,:salary_expectation,:arrival_time,:EmployeeInfo_attributes => work_experiences )
  end

end
