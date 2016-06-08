class EmployeeInfo < ApplicationRecord
      has_many :work_experiences
     has_many :cducations
  validates :name, presence: true , length: {minimum: 2}

     # work_experiences = [:start_and,:end_date,:work_unit,:post,:salary,:reasons_for_leaving,:witness,:telephone,:employee_info_id]
     # cducation = [:start_and,:end_date,:school,:major,:leaming_form,:qualifications_and_degree,:employee_info_id]

  def work_experiences_attributes=(work_experiences)
    work_experiences_attributes.each do |f|
      work_experiences.build(f)
    end
  end

end
