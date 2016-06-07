class EmployeeInfo < ApplicationRecord
  has_many :work_experiences, dependent: :destroy
  validates :name, presence: true , length: {minimum: 2}
end
