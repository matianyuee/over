class   Admin::ResignationController < Admin::BaseController
  def new
    @employees = EmployeeInfo.find_by_sql("select employee_infos.*,departments.positionName,positions.positionname from  departments inner join employee_infos on departments.id = employee_infos.department_id inner join positions on positions.id = employee_infos.position_id where employee_infos.id="+params[:id])
    @resignationapplication = Resignationapplication.new
    session[:id] =params[:id]
  end
  def create
    @resignationapplication = Resignationapplication.new(resignationapplicationinfo)
    @resignationapplication.employee_info_id = session[:id]
    @resignationapplication.save
    redirect_to :controller => :staffinfo ,:action => :index
  end
  def index
      @resignationapplication = Resignationapplication.all

      @employees = EmployeeInfo.all
      @department = Department.all
      @position = Position.all
  end

  def edit
      @resignationapplication = Resignationapplication.find(params[:id])
      @employees = EmployeeInfo.where("id=?",@resignationapplication.employee_info_id)

      @department = Department.all
      @position = Position.all
  end
  def update
    @resignationapplication = Resignationapplication.find(params[:id])
    @resignationapplication.update(updateinfo)
    redirect_to :controller => :resignation , :action =>:index
  end
  private
  def resignationapplicationinfo
    params.require(:resignationapplication).permit(:contractexpirationdate,:reasonsforresignation,:reasonforresignationinfo,:staffsignature,:staffsignaturedate)
  end
  private
  def updateinfo
    params.require(:resignationapplication).permit(:superiorsignature,:superiorsignaturedate,:lastworkingday,
                                                   :doyouneedtomakeup,:exitinterviewrecord,:signatureofdepartmentdirector,
                                                   :signatureofhrdirector,:ceosignature,:departmentdirectordate,
                                                   :hrdirectordate,:sedate)
  end
end
