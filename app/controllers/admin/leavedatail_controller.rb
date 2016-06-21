class  Admin::LeavedatailController < Admin::BaseController
  def new
      #@employees = EmployeeInfo.find_by_sql("select employee_infos.*,departments.positionName,positions.positionname from  departments inner join employee_infos on departments.id = employee_infos.department_id inner join positions on positions.id = employee_infos.position_id where employee_infos.id="+session[:id])
      @employees = EmployeeInfo.find(session[:id])
      @department = Department.find(@employees.department_id)
      @positions = Position.find(@employees.position_id)
      @leavedatail = Leavedatail.new
  end
  def create
     @sequence_id = 1;
     params.require(:leavedatail).each{ |le|
       @leavedatail = Leavedatail.new(le.permit(:whethertocomplete,:signatureoftheresponsibleperson,:departmenthead,:remarks))
       @leavedatail.employee_info_id = session[:id]
       @sequence_id +=1
       @leavedatail.save
     }
        @employees = EmployeeInfo.find(session[:id])
        @employees.update(state:"离职")
      redirect_to :controller => :staffinfo ,:action => :index
  end

end
