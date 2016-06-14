class Department < ApplicationRecord
  has_many :employee_infos, :dependent => :destroy
  validates :positionName, presence: true , length: {minimum: 2}
end
