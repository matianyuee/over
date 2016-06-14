class  Admin::PositionController < Admin::BaseController
  def new
    @positions = Position.new
    @department = Department.all
  end
  def create
    @positions = Position.new(positioninfo)
    if @positions.save
      redirect_to :action => 'index'
    else
      render :new
    end
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
    @position = Position.all
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
    params.require(:position).permit(:department_id,:positionname)
  end
end
