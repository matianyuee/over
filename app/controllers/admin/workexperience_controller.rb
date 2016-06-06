class Admin::WorkexperienceController < Admin::BaseController
  def new
    @workexperience = WorkExperience.new
  end
end
