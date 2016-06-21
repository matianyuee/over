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
    redirect_to :controller => :leavedatail ,:action => :new
  end

  private
  def resignationapplicationinfo
    params.require(:resignationapplication).permit(:contractexpirationdate,:reasonsforresignation,:reasonforresignationinfo,:staffsignature,:superiorsignature,:staffsignaturedate,
                                                   :superiorsignaturedate,:lastworkingday,:doyouneedtomakeup,:exitinterviewrecord,:signatureofdepartmentdirector,
                                                   :signatureofhrdirector,:ceosignature,:departmentdirectordate,:hrdirectordate,:sedate)
  end
end
