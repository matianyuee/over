class EmployeeInfo < ApplicationRecord
  has_many :WorkExperience, dependent: :destroy
  validates :name, presence: true , length: {minimum: 2}
end
