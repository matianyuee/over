class Admin::StaffinfoController < Admin::BaseController
  def index
    @employee_infos = EmployeeInfo.all
    @position = Position.all
  end

  def new
    @article = EmployeeInfo.new
    @department = Department.all

  end

  def groupleader

  end

  def create
    # work = [:id,:start_and,:end_date,:work_unit,:post,:salary,:reasons_for_leaving,:witness,:telephone]
    # cduet = [:id,:start_and,:end_date,:school,:major,:leaming_form,:qualifications_and_degree]
    #   @article = EmployeeInfo.new(params.require(:employee_info).permit(:name,
    #                                                                     :gender,:birth_date,:marriage,:nation,:origin,:political_landscape,
    #                                                                     :physical_condition,:height,:weight,:contact_phone,:graduation_time,
    #                                                                     :_school,:major,:highest_degree,:id_card_number,:permanent_address,
    #                                                                     :live_address,:mailbox,:salary_expectation,:arrival_time,:work_params,
    #                                                                     :work_experiences_attributes => work , :cducations_attributes => cduet))
      @article = EmployeeInfo.new(article_params)
    if @article.save
    # params[:work_experience].each { |pars|
    #   @workExperien = WorkExperience.new(pars.permit(:start_and,:end_date,:work_unit,:post,:salary,:reasons_for_leaving,:witness,:telephone))
    #   @workExperien.employee_info_id = @article.id
    #    @workExperien.save
    #   }
       # params.require(:cducation).each { |cc|
         #@cducation = Cducation.new(cc.permit(:start_and,:end_date,:school,:major,:leaming_form,:qualifications_and_degree))
         #@cducation.employee_info_id = @article.id
         # @cducation.save
      # }
     @work_params = WorkExperience.new(work_params)
     @work_params.employee_info_id = @article.id
     @work_params.save
     @cducation = Cducation.new(cdudetion_params)
      @cducation.employee_info_id =@article.id
      @cducation.save
      if @work_params && @cducation
          redirect_to :action=>"index"
      else
        render :new
      end

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
      work = [:id,:start_and,:end_date,:work_unit,:post,:salary,:reasons_for_leaving,:witness,:telephone]
      cduet = [:id,:start_and,:end_date,:school,:major,:leaming_form,:qualifications_and_degree]
    @employee_info.update(params.require(:employee_info).permit(:name,
                                                                :gender,:birth_date,:marriage,:nation,:origin,:political_landscape,
                                                                :physical_condition,:height,:weight,:contact_phone,:graduation_time,
                                                                :_school,:major,:highest_degree,:id_card_number,:permanent_address,
                                                                :live_address,:mailbox,:salary_expectation,:arrival_time,:work_params,
                                                                :self_evaluation,:reasons_for_applying,:office_software,:department_id,
                                                                :work_experiences_attributes => work , :cducations_attributes => cduet))
      redirect_to :action=>"show"



  end
  def edit
    @employee = EmployeeInfo.find(params[:id])
    @department = Department.all
  end
  def show
    @employee_info = EmployeeInfo.find(params[:id])
    @department = Department.all
    @work_params = WorkExperience.find_by_sql("select work_experiences.* from employee_infos inner join work_experiences on employee_infos.id = work_experiences.employee_info_id where employee_infos.id="+params[:id])
    @cducation = Cducation.find_by_sql("select cducations.* from employee_infos inner join cducations on employee_infos.id = cducations.employee_info_id where employee_infos.id="+params[:id]);
  end

  def article_params
    params.require(:employee_info).permit(:name,
                                          :gender,:birth_date,:marriage,:nation,:origin,:political_landscape,
                                          :physical_condition,:height,:weight,:contact_phone,:graduation_time,
                                          :_school,:major,:highest_degree,:id_card_number,:permanent_address,
                                          :live_address,:mailbox,:salary_expectation,:arrival_time,:work_params,
                                          :self_evaluation,:reasons_for_applying,:office_software,:department_id)
  end
  def work_params
    params.require(:work_experience).permit(:start_and,:end_date,:work_unit,:post,:salary,:reasons_for_leaving,:witness,:telephone)
  end
  def cdudetion_params
    params.require(:cducations).permit(:start_and,:end_date,:school,:major,:leaming_form,:qualifications_and_degree)
  end

end
