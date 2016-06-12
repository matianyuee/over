class EmployeeInfo < ApplicationRecord
      has_many :work_experiences, :dependent => :destroy
     has_many :cducations, :dependent => :destroy
    validates :name, presence: true , length: {minimum: 2}
      accepts_nested_attributes_for :cducations
      accepts_nested_attributes_for :work_experiences
end
