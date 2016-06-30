class  Admin::PositionController < Admin::BaseController
  def new
    @positioninfo = Position.new
    @department = Department.all
  end


  def edit
    @position = Position.find(params[:id])
    @department = Department.all
  end

  def update
    @position = Position.find(params[:id])
    @position.update(positioninfo)
    redirect_to :action => 'index'
  end

  def index

    @positioninfo = Position.new
   @department = Department.all
    @position = Position.where("department_id=?",params[:select])
  end

  def create
    @positioninfo = Position.new(positioninfo)
    @positioninfo.department_id = params[:select]
    if @positioninfo.save
      redirect_to :action => 'index'
    else
      render :new
    end
  end

  def show
    @position = Position.find(params[:id])
    @department = Department.all
  end
  def destroy
    @position = Position.find(params[:id])
    @position.destroy
    redirect_to :action => 'index'
  end

  private
  def positioninfo
    params.require(:position).permit(:positionname)
  end
end
