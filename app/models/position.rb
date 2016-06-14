class Position < ApplicationRecord
  has_many :employee_infos, :dependent => :destroy
end
