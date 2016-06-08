class EmployeeInfo < ApplicationRecord
      has_many :work_experiences
     has_many :cducations
  validates :name, presence: true , length: {minimum: 2}

  accepts_nested_attributes_for :work_experiences
  accepts_nested_attributes_for :cducations

end
